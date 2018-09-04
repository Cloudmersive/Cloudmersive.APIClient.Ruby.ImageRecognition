# CloudmersiveImageRecognitionApiClient::ImageDescriptionResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**successful** | **BOOLEAN** | Was the image processed successfully? | [optional] 
**highconfidence** | **BOOLEAN** | Is the resulting best outcome recognition a high confidence outcome? | [optional] 
**best_outcome** | [**RecognitionOutcome**](RecognitionOutcome.md) | The best Machine Learning outcome | [optional] 
**runner_up_outcome** | [**RecognitionOutcome**](RecognitionOutcome.md) | Best backup (\&quot;runner up\&quot;) Machine Learning outcome | [optional] 


