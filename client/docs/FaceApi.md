# CloudmersiveImageRecognitionApiClient::FaceApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**face_compare**](FaceApi.md#face_compare) | **POST** /image/face/compare-and-match | Compare and match faces
[**face_crop_first**](FaceApi.md#face_crop_first) | **POST** /image/face/crop/first | Crop image to face with square crop
[**face_crop_first_round**](FaceApi.md#face_crop_first_round) | **POST** /image/face/crop/first/round | Crop image to face with round crop
[**face_detect_age**](FaceApi.md#face_detect_age) | **POST** /image/face/detect-age | Detect the age of people in an image
[**face_detect_gender**](FaceApi.md#face_detect_gender) | **POST** /image/face/detect-gender | Detect the gender of people in an image
[**face_locate**](FaceApi.md#face_locate) | **POST** /image/face/locate | Detect and find faces in an image
[**face_locate_with_landmarks**](FaceApi.md#face_locate_with_landmarks) | **POST** /image/face/locate-with-landmarks | Detect and find faces and landmarks eyes and nose and mouth in image


# **face_compare**
> FaceCompareResponse face_compare(input_image, match_face)

Compare and match faces

Find the faces in an input image, and compare against a reference image to determine if there is a match against the face in the reference image.  The reference image (second parameter) should contain exactly one face.

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

api_instance = CloudmersiveImageRecognitionApiClient::FaceApi.new

input_image = File.new('/path/to/file.txt') # File | Image file to perform the operation on; this image can contain one or more faces which will be matched against face provided in the second image.  Common file formats such as PNG, JPEG are supported.

match_face = File.new('/path/to/file.txt') # File | Image of a single face to compare and match against.


begin
  #Compare and match faces
  result = api_instance.face_compare(input_image, match_face)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling FaceApi->face_compare: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input_image** | **File**| Image file to perform the operation on; this image can contain one or more faces which will be matched against face provided in the second image.  Common file formats such as PNG, JPEG are supported. | 
 **match_face** | **File**| Image of a single face to compare and match against. | 

### Return type

[**FaceCompareResponse**](FaceCompareResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **face_crop_first**
> String face_crop_first(image_file)

Crop image to face with square crop

Crop an image to the face (rectangular crop).  If there is more than one face present, choose the first one.

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

api_instance = CloudmersiveImageRecognitionApiClient::FaceApi.new

image_file = File.new('/path/to/file.txt') # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Crop image to face with square crop
  result = api_instance.face_crop_first(image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling FaceApi->face_crop_first: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream



# **face_crop_first_round**
> String face_crop_first_round(image_file)

Crop image to face with round crop

Crop an image to the face (circular/round crop).  If there is more than one face present, choose the first one.

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

api_instance = CloudmersiveImageRecognitionApiClient::FaceApi.new

image_file = File.new('/path/to/file.txt') # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Crop image to face with round crop
  result = api_instance.face_crop_first_round(image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling FaceApi->face_crop_first_round: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream



# **face_detect_age**
> AgeDetectionResult face_detect_age(image_file)

Detect the age of people in an image

Identify the age, position, and size of human faces in an image, along with a recognition confidence level.  People in the image do NOT need to be facing the camera; they can be facing away, edge-on, etc.  Input image should be a PNG or JPG.  Consumes 20 API calls.

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

api_instance = CloudmersiveImageRecognitionApiClient::FaceApi.new

image_file = File.new('/path/to/file.txt') # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Detect the age of people in an image
  result = api_instance.face_detect_age(image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling FaceApi->face_detect_age: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**AgeDetectionResult**](AgeDetectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **face_detect_gender**
> AgeDetectionResult face_detect_gender(image_file)

Detect the gender of people in an image

Identify the gender, position, and size of human faces in an image, along with a recognition confidence level.  People in the image should be facing the camera.  Input image should be a PNG or JPG.  Consumes 20 API calls.

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

api_instance = CloudmersiveImageRecognitionApiClient::FaceApi.new

image_file = File.new('/path/to/file.txt') # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Detect the gender of people in an image
  result = api_instance.face_detect_gender(image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling FaceApi->face_detect_gender: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**AgeDetectionResult**](AgeDetectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **face_locate**
> FaceLocateResponse face_locate(image_file)

Detect and find faces in an image

Locate the positions of all faces in an image

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

api_instance = CloudmersiveImageRecognitionApiClient::FaceApi.new

image_file = File.new('/path/to/file.txt') # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Detect and find faces in an image
  result = api_instance.face_locate(image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling FaceApi->face_locate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**FaceLocateResponse**](FaceLocateResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **face_locate_with_landmarks**
> FaceLocateWithLandmarksResponse face_locate_with_landmarks(image_file)

Detect and find faces and landmarks eyes and nose and mouth in image

Locate the positions of all faces in an image, along with the eyes, eye brows, nose and mouth components of each

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

api_instance = CloudmersiveImageRecognitionApiClient::FaceApi.new

image_file = File.new('/path/to/file.txt') # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Detect and find faces and landmarks eyes and nose and mouth in image
  result = api_instance.face_locate_with_landmarks(image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling FaceApi->face_locate_with_landmarks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**FaceLocateWithLandmarksResponse**](FaceLocateWithLandmarksResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



