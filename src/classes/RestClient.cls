Public with sharing virtual class RestClient {
		Public class RestClientException extends Exception {}

		/*
		 * class variable creation - DO NOT EDIT
		 */

		Public Map<String,String> headers;
		Public String url;
		Public String method;
		Public String body;
		Public HttpRequest request;
		Public HttpResponse response;
		Public String responseBody;
		Public String lastDebugMessage;
		Http h;
		
		/*
		 * Constants - Edit to your satisfaction
		 */

		Public Static Integer TIMEOUT = 60000; // Default HTTP Timeout
		Public Boolean DEBUG = true; // should we print debug statements?

		/*
		 * Constructors:
		 */

		Public RestClient() {} //Prevent empty objects.

		//master constructor with everything required. 
		Public RestClient(String url, String method, Map<String,String> headers, String body) {
				try {
						this.h = new Http();
						this.request = buildRequest(headers, url, method.toUpperCase(), body);
						this.response = makeRequest(this.h, this.request);
						this.responseBody = handleResponse(this.response);
				} catch(Exception e) {
						//log the error, but set as much as we can with the input given
						log('Failed to execute callout. SFDC Reports: ',e, e.getMessage());
						if(headers != null) this.headers = headers;
						this.body = body;
						this.url = url;
						this.method = method.toUpperCase();
				}
		}
		
		Public RestClient(String url, String method, String body) {
				this(url, method, null, body);
		}
		
		Public RestClient(String url, String method, Map<String,String> headers) {
				this(url, method, headers, null);
		}
		
		Public RestClient(String url, String method) {
				this(url, method, new Map<String,String>(), null);
		}

		/*
		 * Helper Methods - These do the actual work.
		 */

	Public Static HttpRequest buildRequest(map<String,String> headers, String url, String method, String body){
		HttpRequest request = new HttpRequest();
		request.setTimeout(TIMEOUT); // timeout in milliseconds 
		if (headers != null) {
						for(String hkey : headers.keySet()){
						request.setHeader(hkey, headers.get(hkey)); 
				}   
		}
			request.setEndpoint(url);
			request.setMethod(method);
			if (body != null && body.length() > 0) {
				request.setBody(body);
			}
			return request;
	}

		Public Static HttpResponse makeRequest(Http h, HttpRequest request){
				HttpResponse response = h.send(request);
				if (response.getStatusCode() > 299) {
						throw new RestClientException('Failed to recieve a success code from remote. Code was: ' + response.getStatusCode() + ' request was ' + request + ' Response Body is: ' + response.getBody());
				}
				return response;    
		}  

		Public string handleResponse(HttpResponse response){
				log('Response', response, response.getBody());
				return response.getBody();
		}
		
		
		/**
		* GET Convenance Methods.
		**/
		// RestClient.get('http://www.google.com/?q=convenance')
		Public String get(String url) {
				RestClient x = new RestClient(url, 'get', null, null);
				log(url, x, null);
				return x.responseBody;
		}
		
		// RestClient.get('http://www.google.com/', HeaderMap{'q', 'convenance'})
		Public String get(String url, map<String,String> headers) {
				RestClient x = new RestClient(url, 'get', headers, null);
				system.debug(x.responseBody);
				return x.responseBody;
		}
		
		// RestClient.get('http://www.google.com/', HeaderMap{'q', 'convenance'}, 'some body of text for unknown reason.')
		Public String get(String url, map<String,String> headers, String body) {
				RestClient x = new RestClient(url, 'get', headers, body);
				return x.responseBody;
		}
		
		Public HttpResponse post(String url, Map<String,String> headers, String Body) {
				RestClient x = new RestClient(url, 'POST', headers, body);
				return x.response;
		}

		Public String request(String url, String method, Map<String,String> headers){
				RestClient x = new RestClient(url, method, headers);
				return x.responseBody;
		}

		Public String request(String url, String method, String body){
				RestClient x = new RestClient(url, method, body);
				return x.responseBody;
		}

		Public String request(String url, String method){
				RestClient x = new RestClient(url, method);
				return x.responseBody;
		}

		/*
		 * Private helper methods: Only this class should use them.
		 */
		
		public void log(String header, Object obj, String msg) {
				String startStop = '\n===============================================================================';
				String logOutput = startStop;
				logOutput += (header != null) ? '\n== Header: ' + header : 'Header: No Header Set';
				logOutput += (obj != null) ? '\n== Obj string Rep: ' + obj : '\n No Obj set';
				logOutput += (msg != null) ? '\n== ' + msg : '';
				logOutput += startStop;
				if(DEBUG){
						lastDebugMessage = logOutput;
						System.debug(logOutput);
				}
				
		}

}