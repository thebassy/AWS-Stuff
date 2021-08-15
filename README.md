## AWS Useful Stuff
*Or at least I find it useful on occasion...*

### Athena Queries
*I might flesh out this section with a description of each in the future for now...*
- Bunch of quick SQL queries that can be passed using Athena (naming scheme may differ) to query logs for ELB and Cloudfront. The queries allow you to pull a range of information.

### Cloudfront Funtions
- Cloudfront Function Script `add_query_string.js` will leverage Cloudfront in adding a query string to a request received at an Edge Location, this query string is then passed back to the origin having never been added by the requester.
- `CFF-HSTS.js` allows you to add Strict-Transport Security headers to HTTP requests.

### Lambda Functions
- `LE-HSTS.js` does the same as `CFF-HSTS.js` but on Lambda@Edge rather than Cloudfront Functions.
- `LE-PutHeaders.js` allows you to add headers to HTTP Responses in using Lambda@Edge.

---

### Changelog
- Initial scripts and queries added.
