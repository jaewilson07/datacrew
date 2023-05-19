var domo = window.domo; // For more on domo.js: https://developer.domo.com/docs/dev-studio-tools/domo-js#domo.get
var datasets = window.datasets;
var Query = window.Query; // For more on Query: https://www.npmjs.com/package/@domoinc/query
var user = window.domo.env.userName.split("+")[0];
var welcome = document.getElementById("welcome");

console.log(user)
console.log('domo.env', domo.env)

// HTML Emelent Configuration
welcome.innerHTML = "<h1>Hi, " + user + ". </h1><h2>" + welcome.innerHTML + "</h2>";

// HTML Bootstrap Grid Configuration
var query = (new Query())
  .select('Logo', 'Text', 'URL', 'Order')
  .orderBy('Order', 'Ascending')
	.query(datasets[0]);
domo.get(query, {format: 'array-of-arrays'}).then(handleResult);

// Loop through result to build out grid
function handleResult(data) {
  // Restructure the array-of-arrays object into a usable object
  const rows = data.rows.map(row => {
    return data.columns.reduce((acc, curr, index) => {
      acc[curr] = row[index];
      return acc;
    }, {});
  });

  // Loop through rows to create the grid objects
  let container = document.getElementById("grid");
  let counter = 1
  rows.forEach(row => {
    // Step 1. Add logo to grid and configure href
    let logoCell = document.createElement("div");
    let stripe = document.createElement("div");
    stripe.className = "stripe";
    //stripe.setAttribute('style', `background-color: ${row['Color']};`);
    /*stripe.setAttribute('style', 'background-color: #a7a7a7;');*/
    
    logoCell.innerHTML =  row['Text']; // make this a stirng template literal
    logoCell.className = "cell";
    logoCell.id = "cell" + counter;
    logoCell.setAttribute("href", row['URL']);
    container.appendChild(logoCell);
    logoCell.appendChild(stripe);
    

    // Add a click event listener to the cell
    logoCell.addEventListener('click', function() {
      // Do something with the URL
      domo.navigate(logoCell.getAttribute("href"), true);
      console.log(textCell.getAttribute("href"));
    });
    counter++
    console.log(counter)
  });
}


const toggleSwitch = document.getElementById('toggle-switch');

toggleSwitch.addEventListener('change', () => {
  if (toggleSwitch.checked == true) {
    // Do something when toggle switch is checked
    console.log('off')
    var header = document.querySelector('.header');
    var cell4 = document.getElementById('cell4');
    //var cell8 = document.getElementById('cell8');
    //header.style.background = 'linear-gradient(60deg, #DC0032 0%, #FF9800 100%)';
    cell4.style.display = 'flex';
    //cell8.style.display = 'block';
  } else {
    // Do something when toggle switch is unchecked
    console.log('on');
    var header = document.querySelector('.header');
    var cell4 = document.getElementById('cell4');
    //var cell8 = document.getElementById('cell8');
    //header.style.background = 'linear-gradient(60deg, #4686B7 0%, #193751 100%)';
 		cell4.style.display = 'none';
    //cell8.style.display = 'none';
  }
});
