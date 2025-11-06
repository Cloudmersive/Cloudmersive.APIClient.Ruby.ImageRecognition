# CloudmersiveImageRecognitionApiClient::NsfwAdvancedResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**successful** | **BOOLEAN** | True if the classification was successfully run, false otherwise | [optional] 
**clean_result** | **BOOLEAN** | True if the result was clean, false otherwise | [optional] 
**contains_nudity** | **BOOLEAN** | True if the image contains nudity or sex, false otherwise | [optional] 
**contains_graphic_violence** | **BOOLEAN** | True if the image contains graphic violence and/or gore, false otherwise | [optional] 
**contains_non_graphic_violence** | **BOOLEAN** | True if the image contains non-graphic violence, e.g. weapons, false otherwise | [optional] 
**contains_self_harm** | **BOOLEAN** | True if the image contains self-harm or suicide imagery, false otherwise | [optional] 
**contains_hate** | **BOOLEAN** | True if the image contains hate, false otherwise | [optional] 
**contains_potential_illegal_activity** | **BOOLEAN** | True if the image contains potentially illegal activity such as drugs, false otherwise | [optional] 
**contains_medical_imagery** | **BOOLEAN** | True if the image contains medical imagery, false otherwise | [optional] 
**contains_profanity** | **BOOLEAN** | True if the image contains profanity or obscenities, false otherwise | [optional] 
**score** | **Float** | Score between 0.0 and 1.0.  Scores of 0.0-0.2 represent high probability safe content, while scores 0.8-1.0 represent high probability unsafe content.  Content between 0.2 and 0.8 is of increasing raciness. | [optional] 
**classification_outcome** | **String** | Classification result into four categories: SafeContent_HighProbability, UnsafeContent_HighProbability, RacyContent, SafeContent_ModerateProbability | [optional] 


