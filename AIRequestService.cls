public class AIRequestService {

    @future(callout=true)
    public static void processAIRequest(String userInput) {
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://example-ai-endpoint.com');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json');

        // Payload structure example
        String body = JSON.serialize(new Map<String, Object>{
            'prompt' => userInput
        });

        request.setBody(body);

        Http http = new Http();
        // Callout execution (mocked for demo)
    }
}
