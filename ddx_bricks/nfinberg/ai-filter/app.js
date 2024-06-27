// DDX Bricks Wiki - See https://developer.domo.com/docs/ddx-bricks/getting-started-using-ddx-bricks
// for tips on getting started, linking to Domo data and debugging your app
//
// Define which fields you want to be able to filter by here
//
var fields = ["sales_rep", "revenue", "date_ymd"];
let data; // Global variable to store the data
var domo = window.domo; // For more on domo.js: https://developer.domo.com/docs/dev-studio-guides/domo-js#domo.get
var datasets = window.datasets;
fetchData();
async function fetchData() {
  try {
    // clear existing filters
    domo.filterContainer([]);
    data = await getData();
    logMessage("Data fetched successfully");
    console.log(data);
  } catch (error) {
    logMessage("Error fetching data: " + error);
    console.error("Error fetching data:", error);
  }
}
async function getData() {
  // Get Data From Dataset
  var query = `/data/v1/${datasets[0]}?fields=${fields.join()}`;
  const data = await domo.get(query);
  return data;
}
var inputElement = document.getElementById("inputText");
var submitButton = document.getElementById("submitButton");
var clearButton = document.getElementById("clearButton");
// Setup event listener on filter form
submitButton.addEventListener("click", async function (event) {
  event.preventDefault();
  const inputValue = inputElement.value;
  logMessage("Captured value: " + inputValue);
  console.log("Captured value:", inputValue);
  // Disable the submit button and show "Generating Filters" text
  submitButton.disabled = true;
  submitButton.innerText = "Generating Filters";
  logMessage("Converting question to a prompt");
  console.log("Converting question to a prompt");
  logMessage("Data: " + JSON.stringify(data));
  console.log("Data", data);
  var possibleValuesforColumns = getPossibleValuesForColumns(data, fields);
  logMessage("Getting possible values...");
  logMessage("Result: " + JSON.stringify(possibleValuesforColumns));
  console.log("GETTING POSSIBLE VALUES....");
  console.log("RESULT", possibleValuesforColumns);
  const prompt = constructPrompt(inputValue, fields, possibleValuesforColumns);
  logMessage("Prompting GPT to create filtersArray");
  console.log("Prompting GPT to create filtersArray");
  try {
    const filtersArray = await getFiltersArray(prompt);
    logMessage("Applying filter");
    console.log("Applying filter");
    domo.filterContainer(filtersArray);
  } catch (error) {
    logMessage("Error: " + error);
    console.error("Error:", error);
  } finally {
    // Re-enable the submit button and restore its original text
    submitButton.disabled = false;
    submitButton.innerText = "Submit";
  }
});
domo.onFiltersUpdate(function (updatedFilters) {
  logMessage("Filters updated: " + JSON.stringify(updatedFilters));
  console.log(updatedFilters);
});
clearButton.addEventListener("click", function () {
  logMessage("Clearing filters");
  console.log("Clearing filters");
  domo.filterContainer([]);
});
function handleInputChange() {
  if (inputElement.value.length >= 5) {
    submitButton.removeAttribute("disabled");
  } else {
    submitButton.setAttribute("disabled", "true");
  }
}
function constructPrompt(question, columns, possibleValuesforColumns) {
  const prompt = `Please respond with only valid JSON that can be passed to the domo.filterContainer method, which takes an array of objects that make up a filter configuration. Please don’t include anything else in the response aside from the valid JSON. Example of applying the method:
        domo.filterContainer([{
          column: 'category',
          operator: 'IN',
          values: ['ALERT'],
          dataType: 'STRING'
        }]);
        column: a string representing the column name
        operator: the comparison operator that the filter will use. Possible values include:
        'IN', 'NOT_IN', 'GREATER_THAN', 'GREAT_THAN_EQUALS_TO', 'LESS_THAN', 'LESS_THAN_EQUALS_TO', 'BETWEEN', 'NOT_BETWEEN', 'LIKE', 'NOT_LIKE'
        values: an array of values to compare against.
        dataType: the type of data that is contained in the values array. Possible values include:
        'DATE', 'DATETIME', 'NUMERIC', 'STRING'
        The user has asked the question: "${question}"
        Possible column names include: ${columns}
        Possible values for ${possibleValuesforColumns}`;
  return prompt;
}
function getPossibleValuesForColumns(data, columns) {
  const valueCounts = {};
  // Initialize valueCounts object with empty Sets for each column
  columns.forEach((column) => {
    valueCounts[column] = new Set();
  });
  // Iterate through data to collect unique non-empty values for each column
  data.forEach((entry) => {
    columns.forEach((column) => {
      const value = entry[column];
      if (value !== undefined && value !== null && value !== "") {
        valueCounts[column].add(value);
      }
    });
  });
  // Convert Sets to arrays and construct the string representation
  let result = "";
  columns.forEach((column) => {
    const possibleValues = Array.from(valueCounts[column]);
    result += `Possible values for '${column}' include: ${possibleValues.join(
      ", "
    )}. \n`;
  });
  return result;
}
function generateText(prompt) {
  const body = {
    input: prompt,
  };
  return domo.post(`/domo/ai/v1/text/generation`, body);
}
async function getFiltersArray(prompt) {
  logMessage("Prompt: " + prompt);
  console.log(prompt);
  logMessage("Generating text");
  console.log("Generating text");
  const gptResponse = await generateText(prompt);
  // Parse the JSON response and validate it
  try {
    const jsonResponse = gptResponse.choices[0].output;
    const parsedResponse = JSON.parse(jsonResponse);
    if (validateFilterConfig(parsedResponse)) {
      logMessage(
        "JSON response is valid and parsed successfully: " +
          JSON.stringify(parsedResponse)
      );
      console.log(
        "JSON response is valid and parsed successfully:",
        parsedResponse
      );
      return parsedResponse;
    } else {
      logMessage("JSON response is not valid");
      console.log("JSON response is not valid.");
    }
  } catch (error) {
    logMessage("Error parsing JSON response: " + error.message);
    console.error("Error parsing JSON response:", error.message);
  }
}
// Function to validate the JSON response
function validateFilterConfig(config) {
  if (!Array.isArray(config)) {
    return false;
  }
  for (const filter of config) {
    if (
      typeof filter.column !== "string" ||
      typeof filter.operator !== "string" ||
      !Array.isArray(filter.values) ||
      filter.values.length === 0 ||
      typeof filter.dataType !== "string" ||
      !["DATE", "DATETIME", "NUMERIC", "STRING"].includes(filter.dataType)
    ) {
      return false;
    }
  }
  return true;
}
// Function to log messages to the console output div
function logMessage(message) {
  const consoleOutput = document.getElementById("consoleOutput");
  const newMessage = document.createElement("div");
  newMessage.textContent = message;
  consoleOutput.appendChild(newMessage);
  consoleOutput.scrollTop = consoleOutput.scrollHeight; // Scroll to the bottom
}
