// DDX Bricks Wiki - See https://developer.domo.com/docs/ddx-bricks/getting-started-using-ddx-bricks
// for tips on getting started, linking to Domo data and debugging your app

//Step 1. Select your data from the link in the bottom left corner

//Step 2. Style your map using the following properties
//--------------------------------------------------
// Properties
//--------------------------------------------------
var mapboxAccessToken =
  'pk.eyJ1IjoibXNub2RncmFzcyIsImEiOiJja3ppdGNyd3AxM2t5MnVxcm9tbmJldWNrIn0.enVkHxWWuyUZh_76yJR_3g'; // https://account.mapbox.com/access-tokens

var mapStyle = 'streets-v11'; // streets-v11, light-v10, dark-v10, outdoors-v11, satellite-v9
var itemIcon = 'airport'; // https://labs.mapbox.com/maki-icons/
var clusterIconSize = 1;
var itemIconSize = 1;
var smallClusterColor = '#DADADA';
var smallClusterSize = 20;
var mediumClusterColor = '#d7d7d7';
var mediumClusterSize = 30;
var largeClusterColor = '#d0d0d0';
var largeClusterSize = 40;

//--------------------------------------------------
// For ultimate flexibility, modify the code below!
//--------------------------------------------------

//Available globals
var mapboxgl = window.mapboxgl;
var domo = window.domo; // For more on domo.js: https://developer.domo.com/docs/dev-studio-guides/domo-js#domo.get
var datasets = window.datasets;
var mapContainerId = 'myDiv'; // id of the div placed on my html tab

//Data Column Names
var dataTitleField = 'Name';
var dataLongitudeField = 'Longitude';
var dataLatitudeField = 'Latitude';

if (mapboxAccessToken === '') {
  var container = document.getElementById(mapContainerId);
  container.style.paddingLeft = '30px';
  var errorMessage = '"mapboxAccessToken" is undefined. Please enter a token.';
  displayTokenError(container, errorMessage);
  throw new Error(errorMessage);
}

mapboxgl.accessToken = mapboxAccessToken;

// Some DataSets are massive and will bring any web browser to its knees if you
// try to load the entire thing. To keep your app performing optimally, take
// advantage of filtering, aggregations, and group by's to bring down just the
// data your app needs. Do not get all the columns, just the ones you need.
//
// For additional documentation on how you can query your data, please refer to
// https://developer.domo.com/docs/dev-studio-guides/data-queries
var select = [dataTitleField, dataLongitudeField, dataLatitudeField];
var query = `/data/v1/${datasets[0]}?limit=5000&fields=${select.join()}`;
domo.get(query).then(processData);

function processData(dataRows) {
  var geoJSON = getGeoJSONFromDomoData(dataRows);

  var map = new mapboxgl.Map({
    container: mapContainerId,
    style: 'mapbox://styles/mapbox/' + mapStyle,
    center: [-82.9071, 32.1574],
    zoom: 7,
  });

  map.on('load', function () {
    map.addSource('places', geoJSON);

    map.addLayer({
      id: 'places',
      type: 'circle',
      source: 'places',
      filter: ['has', 'point_count'],
      paint: {
        'circle-color': 'navy',
        'circle-radius': 3,
        'circle-stroke-width': 2,
        'circle-stroke-color': '#ffffff',
      },
    });

    const popup = new mapboxgl.Popup({
      closeButton: false,
      closeOnClick: false,
    });

    map.on('mouseenter', 'places', (e) => {
      // Change the cursor style as a UI indicator.
      map.getCanvas().style.cursor = 'pointer';

      // Create a popup, but don't add it to the map yet.

      // Copy coordinates array.
      const coordinates = e.features[0].geometry.coordinates.slice();

      const description = e.features[0].properties.title;

      console.log(`hello world if this worked there would be a ${description}`);

      // Ensure that if the map is zoomed out such that multiple
      // copies of the feature are visible, the popup appears
      // over the copy being pointed to.
      while (Math.abs(e.lngLat.lng - coordinates[0]) > 180) {
        coordinates[0] += e.lngLat.lng > coordinates[0] ? 360 : -360;
      }

      // Populate the popup and set its coordinates
      // based on the feature found.
      popup.setLngLat(coordinates).setHTML(description).addTo(map);
    });

    map.on('mouseleave', 'places', () => {
      map.getCanvas().style.cursor = '';
      popup.remove();
    });
  });
}

function getGeoJSONFromDomoData(dataRows) {
  var features = [];
  var stop = dataRows.length;
  for (var i = 0; i < stop; i++) {
    var column = dataRows[i];
    features.push({
      type: 'Feature',
      geometry: {
        type: 'Point',
        coordinates: [column[dataLongitudeField], column[dataLatitudeField]],
      },
      properties: {
        description: column[dataTitleField] || 'assigned in getGeoJSON',
      },
    });
  }
  return {
    type: 'geojson',
    data: {
      type: 'FeatureCollection',
      features: features,
    },
    cluster: true,
    clusterRadius: 10,
  };
}
