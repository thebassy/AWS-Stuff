//Function to add query strings to a request made to Cloudfront
//Example request URL to Cloudfront would contain no query strings `example.com`
function handler(event) {
    var querystring = require('querystring');
    var request = event.request;
    var params = {};
    //First query parameter to append to URL
    params['first'] = {'value': "query1"};
    //Second query parameter to append to URL
    params['second'] = {'value': "query2"};
    request.querystring = params;
    console.log(request);
    //Backend origin should receive request URL as `example.com?first=query1&second=query2`
    return request;
}
