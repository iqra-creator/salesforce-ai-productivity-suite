public with sharing class AIRequestService {

    /*
     * This method is responsible for handling AI requests asynchronously.
     * It ensures that callouts are executed safely and do not block
     * the user interface or synchronous transactions.
     */
    @future(callout=true)
    public static void sendPromptForProcessing(String userInput, String modelName) {

        if (String.isBlank(userInput)) {
            return;
        }

        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.example-ai.com/v1/process');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json');

        Map<String, Object> payload = new Map<String, Object>();
        payload.put('model', modelName);
        payload.put('prompt', userInput);
        payload.put('max_tokens', 500);

        request.setBody(JSON.serialize(payload));

        Http http = new Http();
        try {
            HttpResponse response = http.send(request);
            if (response.getStatusCode() == 200) {
                handleSuccessResponse(response.getBody());
            }
        } catch (Exception e) {
            logError(e.getMessage());
        }
    }

    private static void handleSuccessResponse(String responseBody) {
        // Response parsing and handling logic
        // Kept separate for maintainability
    }

    private static void logError(String errorMessage) {
        // Centralized error handling
    }
}
