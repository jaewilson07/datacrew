function set_heading(userName) {
  // sets heading at top of app
  var welcome = document.getElementById('welcome');
  var user = userName.split('+')[0];

  welcome.innerHTML =
    '<h1>Hi, ' + user + '. </h1><h2>' + welcome.innerHTML + '</h2>';
}

async function get_data(dataset, Query, userEmail) {
  // HTML Bootstrap Grid Configuration
  const query = new Query()
    .select('Logo', 'Text', 'URL', 'Order')
    .where('email')
    .equals(userEmail)
    .orderBy('Order', 'Ascending')
    .query(dataset);

  data = await domo.get(query, { format: 'array-of-arrays' });

  return data.rows.map((row) => {
    return data.columns.reduce((acc, curr, index) => {
      acc[curr] = row[index];
      return acc;
    }, {});
  });
}

async function get_data_v2(dataset, userEmail) {
  console.log(userEmail)
  
  data = await domo.post(
    `/sql/v1/${dataset}`,
    `SELECT * FROM ${dataset} WHERE lower(user_email) = '${userEmail}' and parent_page_title is null and lower(domo_instance) = 'playstation-beta'`,
    { contentType: 'text/plain' }
  );

  return data.rows.map((row) => {
    return data.columns.reduce((acc, curr, index) => {
      acc[curr] = row[index];
      return acc;
    }, {});
  });
}

function create_grid(rows) {
  // Loop through rows to create the grid objects
  let container = document.getElementById('grid');
  let counter = 1;

  rows.forEach((row) => {
    // Step 1. Add logo to grid and configure href
    let logoCell = document.createElement('div');
    let stripe = document.createElement('div');
    stripe.className = 'stripe';
    //stripe.setAttribute('style', `background-color: ${row['Color']};`);
    /*stripe.setAttribute('style', 'background-color: #a7a7a7;');*/

    logoCell.innerHTML = row['Text']; // make this a stirng template literal
    logoCell.className = 'cell';
    logoCell.id = 'cell' + counter;
    logoCell.setAttribute('href', row['URL']);

    container.appendChild(logoCell);

    logoCell.appendChild(stripe);

    // Add a click event listener to the cell
    logoCell.addEventListener('click', function () {
      // Do something with the URL
      domo.navigate(logoCell.getAttribute('href'), true);
      // console.log(textCell.getAttribute("href"));
    });
    counter++;
    // console.log(counter);
  });
}

function create_manager_toggle() {
  const toggleSwitch = document.getElementById('toggle-switch');

  toggleSwitch.addEventListener('change', () => {
    if (toggleSwitch.checked == true) {
      // Do something when toggle switch is checked
      // console.log('off')
      var header = document.querySelector('.header');
      var cell4 = document.getElementById('cell4');
      //var cell8 = document.getElementById('cell8');
      //header.style.background = 'linear-gradient(60deg, #DC0032 0%, #FF9800 100%)';
      cell4.style.display = 'flex';
      //cell8.style.display = 'block';
    } else {
      // Do something when toggle switch is unchecked
      // console.log('on');
      var header = document.querySelector('.header');
      var cell4 = document.getElementById('cell4');
      //var cell8 = document.getElementById('cell8');
      //header.style.background = 'linear-gradient(60deg, #4686B7 0%, #193751 100%)';
      cell4.style.display = 'none';
      //cell8.style.display = 'none';
    }
  });
}

async function main(window) {
  // console.log(user)
  console.log('domo.env', window.domo.env);

  var domo = window.domo; // For more on domo.js: https://developer.domo.com/docs/dev-studio-tools/domo-js#domo.get
  var userName = domo.env.userName
  var userEmail = domo.env.userEmail
  
  set_heading((userName = userName));

  // data = await get_data(
  //   (dataset = window.datasets[0]),
  //   (Query = window.Query),
  //   (userEmail = domo.env.userEmail.toLowerCase())
  // );

  data = await get_data_v2(dataset = window.datasets[0], userEmail.toLowerCase());
  
  create_grid((rows = data));
}

main(window);
