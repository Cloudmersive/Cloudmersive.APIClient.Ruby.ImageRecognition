# CloudmersiveImageRecognitionApiClient::ImageAiDetectionResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clean_result** | **BOOLEAN** | True if the image is clean (not AI generated) and false otherwise | [optional] 
**ai_generated_risk_score** | **Float** | Risk score between 0.0 (no risk) and 1.0 (highest risk), with anything over 0.8 being high risk | [optional] 
**ai_source** | **String** | Tool used to generate the image, if identified (this cannot always be identified) | [optional] 


