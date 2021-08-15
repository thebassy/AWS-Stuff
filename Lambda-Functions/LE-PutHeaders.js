'use strict';
exports.handler = (event, context, callback) => {
    console.log(event);
    console.log(context);
    console.log(callback);

    //Get contents of response
    const response = event.Records[0].cf.response;
     console.log(response);
    const headers = response.headers;
     console.log(headers);

    //Set new headers on VR

    headers['cookie'] = [{key: 'Cookie', value: 'This cookie was added by Lambda@Edge'}];
    headers['vary'] = [{key: 'Vary', value: 'Access-Control-Request-Method, Access-Control-Request-Headers, Origin'}];

    //Return modified response
    callback(null, response);
     console.log(callback);
};
