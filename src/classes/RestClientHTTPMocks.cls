public class RestClientHTTPMocks implements HttpCalloutMock {

	Protected Integer             code;
	Protected String              status;
	Protected String              bodyAsString;
	Protected Blob                bodyAsBlob;
	Protected Map<String, String> responseHeaders;

 /*
	* Constructors.
	*/

	public RestClientHTTPMocks(Integer code, String status, String body, Map<String, String> responseHeaders) {
		this.code = code;
		this.status = status;
		this.bodyAsString = body;
		this.bodyAsBlob = null;
		this.responseHeaders = responseHeaders;
	}

	/*
	 * This is the interface method need to implement.
	 */

	public HTTPResponse respond(HTTPRequest req) {		
		// craft the return response.
		HttpResponse res = new HttpResponse();
		res.setStatusCode(this.code);
		res.setStatus(this.status);
		res.setBody(this.bodyAsString);
		return res;
	}

}