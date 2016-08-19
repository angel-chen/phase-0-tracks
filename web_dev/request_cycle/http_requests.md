* What are some common HTTP status codes?
	* HTTP request codes fall into 5 classes and are designated with a 3 digit numerical code. 
		* Informational (1XX)
		* Success (2XX)
		* Redirection (3XX)
		* Client errors (4XX)
		* Server errors (5XX)
	* The most common code is a 200 code, which indicates a successful response. 
	* A 404 code is the most common error code and it means that the requested resource is not found.
	* A 403 code is an error code indicating access to the resource is forbidden. This sometimes means permissions were not enabled on the resource in question.
	* A 503 code is a server-side error code indicating the web server isn't available. It could be down or it could be overloaded. 

* What is the difference between a GET request and a POST request? When might each be used?
	A GET method requests data from a specified resource. A POST method submits data to be processed to a specified resource.

	A GET method should be used if requests need to be cached, bookmarked or there is a need to retrieve data. Because GET methods appear in the URL, there are character restrictions and it should never be used for sensitive data. A POST method should be used when it pertains to sensitve data like username and passwords and there is no need to cache the request.

* What is a cookie? How does it relate to HTTP requests?
	A cookie is a small piece of data stored on the user's web browser while a user is browsing. It is used to remember browser states such as if the user has logged onto the site or logged out of a site. It can also be used to remember previously entered form fields.

	Tracking cookies can be implemented to check if a user has ever been on a site and send back a response to the webserver. This could then be used to keep track of which pages a user has been on, how long they were on the page and the order of pages visited.