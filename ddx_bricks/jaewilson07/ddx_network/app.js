
// DDX Bricks Wiki - See https://developer.domo.com/docs/ddx-bricks/getting-started-using-ddx-bricks
// for tips on getting started, linking to Domo data and debugging your app
 
//Step 1. Select your data from the link in the bottom left corner
 
//Step 2. Style your chart using the following properties 
//--------------------------------------------------
// Properties
//--------------------------------------------------
 
var nodeColor = '#90C0E0';
var lineColor = '#eeeeee';
var groupsToAnnotate = [3, 1, 8];
var groupColors = ['#4E8CBA','#559E38','#FBAD56'];
var circlePadding = 20;
var radiusPadding = 10;
var annotationTitle = 'Les Mis';



//--------------------------------------------------
// For ultimate flexibility, modify the code below!
//--------------------------------------------------
 
//Available globals
var domo = window.domo; // For more on domo.js: https://developer.domo.com/docs/dev-studio-guides/domo-js#domo.get
var d3 = window.d3;
var datasets = window.datasets;


//Form the data queries
var nodeFields = ['id', 'group'];
var nodeQuery = `/data/v1/${datasets[0]}?fields=${nodeFields.join()}`;
var linkFields = ['source', 'target', 'value'];
var linkQuery = `/data/v1/${datasets[1]}?fields=${linkFields.join()}`;

//Get the data and chart it
Promise.all([domo.get(nodeQuery), domo.get(linkQuery)]).then(function([nodeData, linkData]) {
  chartIt(nodeData, linkData);
});

function chartIt(nodeData, linkData) {
  // set the dimensions and margins of the graph
  var winHeight = window.innerHeight;
  var winWidth = window.innerWidth;
  var margin = {top: 20, right: 30, bottom: 30, left: 40},
      width = winWidth - margin.left - margin.right,
      height = winHeight - margin.top - margin.bottom;

  // append the svg object to the body of the page
  var svg = d3.select('#myDiv')
    .append('svg')
      .attr('width', width + margin.left + margin.right)
      .attr('height', height + margin.top + margin.bottom)
    .append('g')
      .attr('transform',
            'translate(' + margin.left + ',' + margin.top + ')');

  var colors = {};
  groupsToAnnotate.forEach(function(num, index){
    colors[num] = groupColors[index];
  });

  var simulation = d3.forceSimulation()
    .force('link', d3.forceLink()
      .id(function (d) { return d.id; })
    )
    .force('charge', d3.forceManyBody())
    .force('center', d3.forceCenter(width / 2, height / 2));

  var link = svg
    .append('g')
    .attr('class', 'links')
    .selectAll('line')
    .data(linkData)
    .enter()
    .append('line')
    .attr('stroke', lineColor)
    .attr('stroke-width', function (d) {
      return Math.sqrt(d.value);
    });
  var node = svg.append('g')
    .attr('class', 'nodes')
    .selectAll('circle')
    .data(nodeData)
    .enter().append('circle')
    .attr('r', 5)
    .attr('fill', function (d) {
      return colors[d.group] || nodeColor;
    }).call(d3.drag()
      .on('start', dragstarted)
      .on('drag', dragged)
      .on('end', dragended));

  node.append('title').text(function (d) {
    return d.id;
  });

  simulation.nodes(nodeData).on('tick', ticked);

  simulation.force('link').links(linkData);

  function ticked() {
    link.attr('x1', function (d) {
      return d.source.x;
    }).attr('y1', function (d) {
      return d.source.y;
    }).attr('x2', function (d) {
      return d.target.x;
    }).attr('y2', function (d) {
      return d.target.y;
    });
    node.attr('cx', function (d) {
      return d.x;
    }).attr('cy', function (d) {
      return d.y;
    });

    makeAnnotations.annotations().forEach(function (d, i) {
      points = nodeData.filter(function (d) {
        return d.group === groupsToAnnotate[i];
      }).map(function (d) {
        return { x: d.x, y: d.y, r: 5 };
      });
      circle = d3.packEnclose(points);
      d.position = { x: circle.x, y: circle.y };
      d.subject.radius = circle.r + circlePadding;
    });
    makeAnnotations.update();
  }

  var points = groupsToAnnotate.map(function (p) {
    return nodeData.filter(function (d) {
      return d.group === p;
    }).map(function (d) {
      return { x: d.x, y: d.y, r: 5 };
    });
  });

  var circle = points.map(function (p) {
    return d3.packEnclose(p);
  });

  var annotations = groupsToAnnotate.map(function(num, index){
    return {
      note: { label: 'Group ' + num, title: annotationTitle },
      dy: 93,
      dx: -176,
      x: circle[index].x,
      y: circle[index].y,
      type: d3.annotationCalloutCircle,
      subject: {
        radius: circle[index].r + circlePadding,
        radiusPadding: radiusPadding
      }
    };
  });

  var makeAnnotations = d3.annotation().annotations(annotations).accessors({ 
    x: function x(d) {
      return d.x;
    }, 
    y: function y(d) {
      return d.y;
    } 
  });

  svg.append('g').attr('class', 'annotation-encircle').call(makeAnnotations);

  function dragstarted(d) {
    if (!d3.event.active) simulation.alphaTarget(0.3).restart();
    d.fx = d.x;
    d.fy = d.y;
  }
  function dragged(d) {
    d.fx = d3.event.x;
    d.fy = d3.event.y;
  }
  function dragended(d) {
    if (!d3.event.active) simulation.alphaTarget(0);
    d.fx = null;
    d.fy = null;
  }

}
