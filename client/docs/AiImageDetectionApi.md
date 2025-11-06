# CloudmersiveImageRecognitionApiClient::AiImageDetectionApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ai_image_detection_detect_file**](AiImageDetectionApi.md#ai_image_detection_detect_file) | **POST** /image/ai-detection/file | Detect if an input image was generated using AI


# **ai_image_detection_detect_file**
> ImageAiDetectionResult ai_image_detection_detect_file(image_file)

Detect if an input image was generated using AI

Detects if the input image was generated using AI tools.

### Example
```ruby
# load the gem
require 'cloudmersive-image-recognition-api-client'
# setup authorization
CloudmersiveImageRecognitionApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveImageRecognitionApiClient::AiImageDetectionApi.new

image_file = File.new('/path/to/file.txt') # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Detect if an input image was generated using AI
  result = api_instance.ai_image_detection_detect_file(image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling AiImageDetectionApi->ai_image_detection_detect_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**ImageAiDetectionResult**](ImageAiDetectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream



