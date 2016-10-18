# Common HTTP Status Codes

* **200 OK**
represents successful response
* **404 Not Found**
resource not available now
* **403 Forbidden**
common reason: user machine is not allowed to access info
* **500 Internal Server Error**
catchall for server side errors
* **503 Service Unavailable**
web server temporarily not available (overloaded/maintence)
* **504 Gateway Timeout**
server is gateway to another server and did not received a timely response from the other server

## Difference between GET request and POST request

* **GET request**
retrieve data from a server

* **POST request**
send data to server

## What is a cookie? How does it relate to HTTP requests?

* A **cookie** is data sent from website and stored in user's browsers to help website remember
information such as what is in your shopping cart, what you had previously entered into form fields. Each request will have a cookie so that the **website can differentiate which user is requesting what information**. 