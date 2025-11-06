# CloudmersiveImageRecognitionApiClient::RecognizeApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recognize_describe**](RecognizeApi.md#recognize_describe) | **POST** /image/recognize/describe | Describe an image in natural language
[**recognize_detect_and_unskew_document**](RecognizeApi.md#recognize_detect_and_unskew_document) | **POST** /image/recognize/detect-document/unskew | Detect and unskew a photo of a document
[**recognize_detect_text_fine**](RecognizeApi.md#recognize_detect_text_fine) | **POST** /image/recognize/detect-text/fine | Detect fine text in a photo of a document
[**recognize_detect_text_large**](RecognizeApi.md#recognize_detect_text_large) | **POST** /image/recognize/detect-text/large | Detect large text in a photo
[**recognize_detect_vehicle_license_plates**](RecognizeApi.md#recognize_detect_vehicle_license_plates) | **POST** /image/recognize/detect-vehicle-license-plates | Detect vehicle license plates in an image
[**recognize_find_symbol**](RecognizeApi.md#recognize_find_symbol) | **POST** /image/recognize/find/symbol | Find the location of a symbol in an image
[**recognize_similarity_compare**](RecognizeApi.md#recognize_similarity_compare) | **POST** /image/recognize/similarity/compare | Compare two images for similarity
[**recognize_similarity_hash**](RecognizeApi.md#recognize_similarity_hash) | **POST** /image/recognize/similarity/hash | Generate a perceptual image hash
[**recognize_similarity_hash_distance**](RecognizeApi.md#recognize_similarity_hash_distance) | **POST** /image/recognize/similarity/hash/distance | Calculates the similarity between two perceptual image hashes


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

image_file = File.new('/path/to/file.txt') # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


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

image_file = File.new('/path/to/file.txt') # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.

opts = { 
  post_processing_effect: 'post_processing_effect_example' # String | Optional, post-processing effects to apply to the email, default is None.  Possible values are None and BlackAndWhite (force the image into a black and white view to aid in OCR operations).
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



# **recognize_detect_text_fine**
> FineTextDetectionResult recognize_detect_text_fine(image_file)

Detect fine text in a photo of a document

Identify the position, and size of small/fine text within a photograph of a document.  Identify the location of small text in a photo - such as words and other forms of high density text.  Can be used on a scan of a document or a photograph (e.g. smartphone camera) of a document, page or receipt.  For OCR purposes - please see our Deep Learning OCR APIs.

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

image_file = File.new('/path/to/file.txt') # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Detect fine text in a photo of a document
  result = api_instance.recognize_detect_text_fine(image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling RecognizeApi->recognize_detect_text_fine: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**FineTextDetectionResult**](FineTextDetectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **recognize_detect_text_large**
> TextDetectionResult recognize_detect_text_large(image_file)

Detect large text in a photo

Identify the position, and size of large text within a photograph.  Identify the location of large text in a photo - such as signs, titles, etc. and other forms of large, low-density text.  Not suitable for high-density text (e.g. scans of documents, receipts, etc.) for OCR purposes - for OCR, please see our Deep Learning OCR APIs.

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

image_file = File.new('/path/to/file.txt') # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Detect large text in a photo
  result = api_instance.recognize_detect_text_large(image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling RecognizeApi->recognize_detect_text_large: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**TextDetectionResult**](TextDetectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **recognize_detect_vehicle_license_plates**
> VehicleLicensePlateDetectionResult recognize_detect_vehicle_license_plates(image_file)

Detect vehicle license plates in an image

Identify the position, and size, and content of vehicle license plates in an image.  License plates should be within 15-20 degrees on-axis to the camera.  Supported image formats are JPG, PNG and BMP.

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

image_file = File.new('/path/to/file.txt') # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


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



# **recognize_find_symbol**
> FindSymbolResult recognize_find_symbol(input_image, target_image)

Find the location of a symbol in an image

Determine if an image contains a symbol, and if so, the location of that symbol in the image.

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

input_image = File.new('/path/to/file.txt') # File | Image file to search through for the target image.

target_image = File.new('/path/to/file.txt') # File | Image to find in the input image.


begin
  #Find the location of a symbol in an image
  result = api_instance.recognize_find_symbol(input_image, target_image)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling RecognizeApi->recognize_find_symbol: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input_image** | **File**| Image file to search through for the target image. | 
 **target_image** | **File**| Image to find in the input image. | 

### Return type

[**FindSymbolResult**](FindSymbolResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **recognize_similarity_compare**
> String recognize_similarity_compare(base_image, comparison_image, opts)

Compare two images for similarity

Generates an image similarity score using Deep Learning between 0.0 and 1.0, values closer to 1.0 indicate greater similarity

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

base_image = File.new('/path/to/file.txt') # File | Image file to compare against.  Common file formats such as PNG, JPEG are supported.

comparison_image = File.new('/path/to/file.txt') # File | Image to compare to the base image.

opts = { 
  recognition_mode: 'recognition_mode_example' # String | Optional, specify the recognition mode; possible values are Normal, Basic and Advanced.  Default is Normal.
}

begin
  #Compare two images for similarity
  result = api_instance.recognize_similarity_compare(base_image, comparison_image, opts)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling RecognizeApi->recognize_similarity_compare: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **base_image** | **File**| Image file to compare against.  Common file formats such as PNG, JPEG are supported. | 
 **comparison_image** | **File**| Image to compare to the base image. | 
 **recognition_mode** | **String**| Optional, specify the recognition mode; possible values are Normal, Basic and Advanced.  Default is Normal. | [optional] 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **recognize_similarity_hash**
> ImageSimilarityHashResponse recognize_similarity_hash(image_file, opts)

Generate a perceptual image hash

Generates a hash value for the image; hash values that are closer together in terms of Hamming Distance are more similar.

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

image_file = File.new('/path/to/file.txt') # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.

opts = { 
  recognition_mode: 'recognition_mode_example' # String | Optional, specify the recognition mode; possible values are Normal, Basic and Advanced.  Default is Normal.
}

begin
  #Generate a perceptual image hash
  result = api_instance.recognize_similarity_hash(image_file, opts)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling RecognizeApi->recognize_similarity_hash: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 
 **recognition_mode** | **String**| Optional, specify the recognition mode; possible values are Normal, Basic and Advanced.  Default is Normal. | [optional] 

### Return type

[**ImageSimilarityHashResponse**](ImageSimilarityHashResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **recognize_similarity_hash_distance**
> ImageSimilarityHashDistanceResponse recognize_similarity_hash_distance(request)

Calculates the similarity between two perceptual image hashes

Calculates the similarity between two perceptual image hashes by computing the Hamming Distance between them.

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

request = CloudmersiveImageRecognitionApiClient::ImageSimilarityHashDistanceRequest.new # ImageSimilarityHashDistanceRequest | 


begin
  #Calculates the similarity between two perceptual image hashes
  result = api_instance.recognize_similarity_hash_distance(request)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling RecognizeApi->recognize_similarity_hash_distance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ImageSimilarityHashDistanceRequest**](ImageSimilarityHashDistanceRequest.md)|  | 

### Return type

[**ImageSimilarityHashDistanceResponse**](ImageSimilarityHashDistanceResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



