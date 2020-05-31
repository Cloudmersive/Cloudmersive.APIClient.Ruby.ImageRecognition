# CloudmersiveImageRecognitionApiClient::FilterApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**filter_black_and_white**](FilterApi.md#filter_black_and_white) | **POST** /image/filter/black-and-white | Convert image to black-and-white grayscale
[**filter_despeckle**](FilterApi.md#filter_despeckle) | **POST** /image/filter/despeckle | Despeckle to remove point noise from the image
[**filter_edge_detect**](FilterApi.md#filter_edge_detect) | **POST** /image/filter/edge-detect/{radius} | Detect and highlight edges in an image
[**filter_emboss**](FilterApi.md#filter_emboss) | **POST** /image/filter/emboss/{radius}/{sigma} | Emboss an image
[**filter_gaussian_blur**](FilterApi.md#filter_gaussian_blur) | **POST** /image/filter/blur/guassian/{radius}/{sigma} | Perform a guassian blur on the input image
[**filter_motion_blur**](FilterApi.md#filter_motion_blur) | **POST** /image/filter/blur/motion/{radius}/{sigma}/{angle} | Perform a motion blur on the input image
[**filter_posterize**](FilterApi.md#filter_posterize) | **POST** /image/filter/posterize | Posterize the image by reducing distinct colors
[**filter_swirl**](FilterApi.md#filter_swirl) | **POST** /image/filter/swirl | Swirl distort the image


# **filter_black_and_white**
> String filter_black_and_white(image_file)

Convert image to black-and-white grayscale

Remove color from the image by converting to a grayscale, black-and-white image

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

api_instance = CloudmersiveImageRecognitionApiClient::FilterApi.new

image_file = File.new('/path/to/file.txt') # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Convert image to black-and-white grayscale
  result = api_instance.filter_black_and_white(image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling FilterApi->filter_black_and_white: #{e}"
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



# **filter_despeckle**
> String filter_despeckle(image_file)

Despeckle to remove point noise from the image

Remove point noise / despeckle the input image

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

api_instance = CloudmersiveImageRecognitionApiClient::FilterApi.new

image_file = File.new('/path/to/file.txt') # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Despeckle to remove point noise from the image
  result = api_instance.filter_despeckle(image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling FilterApi->filter_despeckle: #{e}"
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



# **filter_edge_detect**
> String filter_edge_detect(radius, image_file)

Detect and highlight edges in an image

Perform an edge detection operation on the input image

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

api_instance = CloudmersiveImageRecognitionApiClient::FilterApi.new

radius = 56 # Integer | Radius in pixels of the edge detection operation; a larger radius will produce a greater effect

image_file = File.new('/path/to/file.txt') # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Detect and highlight edges in an image
  result = api_instance.filter_edge_detect(radius, image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling FilterApi->filter_edge_detect: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **radius** | **Integer**| Radius in pixels of the edge detection operation; a larger radius will produce a greater effect | 
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream



# **filter_emboss**
> String filter_emboss(radius, sigma, image_file)

Emboss an image

Perform an emboss operation on the input image

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

api_instance = CloudmersiveImageRecognitionApiClient::FilterApi.new

radius = 56 # Integer | Radius in pixels of the emboss operation; a larger radius will produce a greater effect

sigma = 56 # Integer | Sigma, or variance, of the emboss operation

image_file = File.new('/path/to/file.txt') # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Emboss an image
  result = api_instance.filter_emboss(radius, sigma, image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling FilterApi->filter_emboss: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **radius** | **Integer**| Radius in pixels of the emboss operation; a larger radius will produce a greater effect | 
 **sigma** | **Integer**| Sigma, or variance, of the emboss operation | 
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream



# **filter_gaussian_blur**
> String filter_gaussian_blur(radius, sigma, image_file)

Perform a guassian blur on the input image

Perform a gaussian blur on the input image

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

api_instance = CloudmersiveImageRecognitionApiClient::FilterApi.new

radius = 56 # Integer | Radius in pixels of the blur operation; a larger radius will produce a greater blur effect

sigma = 56 # Integer | Sigma, or variance, of the gaussian blur operation

image_file = File.new('/path/to/file.txt') # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Perform a guassian blur on the input image
  result = api_instance.filter_gaussian_blur(radius, sigma, image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling FilterApi->filter_gaussian_blur: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **radius** | **Integer**| Radius in pixels of the blur operation; a larger radius will produce a greater blur effect | 
 **sigma** | **Integer**| Sigma, or variance, of the gaussian blur operation | 
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream



# **filter_motion_blur**
> String filter_motion_blur(radius, sigma, angle, image_file)

Perform a motion blur on the input image

Perform a motion blur on the input image at a specific angle

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

api_instance = CloudmersiveImageRecognitionApiClient::FilterApi.new

radius = 56 # Integer | Radius in pixels of the blur operation; a larger radius will produce a greater blur effect

sigma = 56 # Integer | Sigma, or variance, of the motion blur operation

angle = 56 # Integer | Angle of the motion blur in degrees

image_file = File.new('/path/to/file.txt') # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Perform a motion blur on the input image
  result = api_instance.filter_motion_blur(radius, sigma, angle, image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling FilterApi->filter_motion_blur: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **radius** | **Integer**| Radius in pixels of the blur operation; a larger radius will produce a greater blur effect | 
 **sigma** | **Integer**| Sigma, or variance, of the motion blur operation | 
 **angle** | **Integer**| Angle of the motion blur in degrees | 
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream



# **filter_posterize**
> String filter_posterize(levels, image_file)

Posterize the image by reducing distinct colors

Reduce the unique number of colors in the image to the specified level

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

api_instance = CloudmersiveImageRecognitionApiClient::FilterApi.new

levels = 56 # Integer | Number of unique colors to retain in the output image

image_file = File.new('/path/to/file.txt') # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Posterize the image by reducing distinct colors
  result = api_instance.filter_posterize(levels, image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling FilterApi->filter_posterize: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **levels** | **Integer**| Number of unique colors to retain in the output image | 
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream



# **filter_swirl**
> String filter_swirl(degrees, image_file)

Swirl distort the image

Swirl distort the image by the specified number of degrees

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

api_instance = CloudmersiveImageRecognitionApiClient::FilterApi.new

degrees = 56 # Integer | Degrees of swirl

image_file = File.new('/path/to/file.txt') # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Swirl distort the image
  result = api_instance.filter_swirl(degrees, image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling FilterApi->filter_swirl: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **degrees** | **Integer**| Degrees of swirl | 
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream



