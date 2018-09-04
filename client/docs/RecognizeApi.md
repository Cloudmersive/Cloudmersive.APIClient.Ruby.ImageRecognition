# CloudmersiveImageRecognitionApiClient::RecognizeApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recognize_describe**](RecognizeApi.md#recognize_describe) | **POST** /image/recognize/describe | Describe an image in natural language
[**recognize_detect_and_unskew_document**](RecognizeApi.md#recognize_detect_and_unskew_document) | **POST** /image/recognize/detect-document/unskew | Detect and unskew a photo of a document
[**recognize_detect_objects**](RecognizeApi.md#recognize_detect_objects) | **POST** /image/recognize/detect-objects | Detect objects, including types and locations, in an image
[**recognize_detect_people**](RecognizeApi.md#recognize_detect_people) | **POST** /image/recognize/detect-people | Detect people, including locations, in an image
[**recognize_detect_vehicle_license_plates**](RecognizeApi.md#recognize_detect_vehicle_license_plates) | **POST** /image/recognize/detect-vehicle-license-plates | Detect vehicle license plates in an image


# **recognize_describe**
> ImageDescriptionResponse recognize_describe(image_file)

Describe an image in natural language

Generate an English language text description of the image as a sentence.

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

api_instance = CloudmersiveImageRecognitionApiClient::RecognizeApi.new

image_file = File.new("/path/to/file.txt") # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Describe an image in natural language
  result = api_instance.recognize_describe(image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling RecognizeApi->recognize_describe: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**ImageDescriptionResponse**](ImageDescriptionResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **recognize_detect_and_unskew_document**
> String recognize_detect_and_unskew_document(image_file, opts)

Detect and unskew a photo of a document

Detect and unskew a photo of a document (e.g. taken on a cell phone) into a perfectly square image.  Great for document scanning applications; once unskewed, this image is perfect for converting to PDF using the Convert API or optical character recognition using the OCR API.

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

api_instance = CloudmersiveImageRecognitionApiClient::RecognizeApi.new

image_file = File.new("/path/to/file.txt") # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.

opts = { 
  post_processing_effect: "post_processing_effect_example" # String | Optional, post-processing effects to apply to the email, default is None.  Possible values are None and BlackAndWhite (force the image into a black and white view to aid in OCR operations).
}

begin
  #Detect and unskew a photo of a document
  result = api_instance.recognize_detect_and_unskew_document(image_file, opts)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling RecognizeApi->recognize_detect_and_unskew_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 
 **post_processing_effect** | **String**| Optional, post-processing effects to apply to the email, default is None.  Possible values are None and BlackAndWhite (force the image into a black and white view to aid in OCR operations). | [optional] 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **recognize_detect_objects**
> ObjectDetectionResult recognize_detect_objects(image_file)

Detect objects, including types and locations, in an image

Identify the position, size and description of objects in an image, along with a recognition confidence level.  Detects both human people and objects in an image.

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

api_instance = CloudmersiveImageRecognitionApiClient::RecognizeApi.new

image_file = File.new("/path/to/file.txt") # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Detect objects, including types and locations, in an image
  result = api_instance.recognize_detect_objects(image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling RecognizeApi->recognize_detect_objects: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**ObjectDetectionResult**](ObjectDetectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **recognize_detect_people**
> ObjectDetectionResult recognize_detect_people(image_file)

Detect people, including locations, in an image

Identify the position, and size of human people in an image, along with a recognition confidence level.  People in the image do NOT need to be facing the camera; they can be facing away, edge-on, etc.

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

api_instance = CloudmersiveImageRecognitionApiClient::RecognizeApi.new

image_file = File.new("/path/to/file.txt") # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Detect people, including locations, in an image
  result = api_instance.recognize_detect_people(image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling RecognizeApi->recognize_detect_people: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**ObjectDetectionResult**](ObjectDetectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **recognize_detect_vehicle_license_plates**
> VehicleLicensePlateDetectionResult recognize_detect_vehicle_license_plates(image_file)

Detect vehicle license plates in an image

Identify the position, and size, and content of vehicle license plates in an image.  License plates should be within 15-20 degrees on-axis to the camera.

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

api_instance = CloudmersiveImageRecognitionApiClient::RecognizeApi.new

image_file = File.new("/path/to/file.txt") # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Detect vehicle license plates in an image
  result = api_instance.recognize_detect_vehicle_license_plates(image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling RecognizeApi->recognize_detect_vehicle_license_plates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**VehicleLicensePlateDetectionResult**](VehicleLicensePlateDetectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



