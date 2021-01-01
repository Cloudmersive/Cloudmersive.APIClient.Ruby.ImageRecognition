# CloudmersiveImageRecognitionApiClient::TextGenerationApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**text_generation_create_handwriting_png**](TextGenerationApi.md#text_generation_create_handwriting_png) | **POST** /image/text/create/handwriting/png | Create an image of handwriting in PNG format


# **text_generation_create_handwriting_png**
> Object text_generation_create_handwriting_png(request)

Create an image of handwriting in PNG format

Uses Deep Learning to generate realistic handwriting and returns the result as a PNG image

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

api_instance = CloudmersiveImageRecognitionApiClient::TextGenerationApi.new

request = CloudmersiveImageRecognitionApiClient::CreateHandwritingRequest.new # CreateHandwritingRequest | Draw text parameters


begin
  #Create an image of handwriting in PNG format
  result = api_instance.text_generation_create_handwriting_png(request)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling TextGenerationApi->text_generation_create_handwriting_png: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CreateHandwritingRequest**](CreateHandwritingRequest.md)| Draw text parameters | 

### Return type

**Object**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream



