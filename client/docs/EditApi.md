# CloudmersiveImageRecognitionApiClient::EditApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**edit_composite_basic**](EditApi.md#edit_composite_basic) | **POST** /image/edit/composite/{location} | Composite two images together
[**edit_draw_rectangle**](EditApi.md#edit_draw_rectangle) | **POST** /image/edit/draw/rectangle | Draw rectangle onto an image
[**edit_draw_text**](EditApi.md#edit_draw_text) | **POST** /image/edit/draw/text | Draw text onto an image


# **edit_composite_basic**
> Object edit_composite_basic(location, base_image, layered_image)

Composite two images together

Composites two input images together; a layered image onto a base image.  The first image you input is the base image.  The second image (the layered image) will be composited on top of this base image.  Supports PNG transparency.  To control padding you can include transparent pixels at the border(s) of your layered images as appropriate.

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

api_instance = CloudmersiveImageRecognitionApiClient::EditApi.new

location = "location_example" # String | Location to composite the layered images; possible values are: \"center\", \"top-left\", \"top-center\", \"top-right\", \"center-left\", \"center-right\", \"bottom-left\", \"bottom-center\", \"bottom-right\"

base_image = File.new("/path/to/file.txt") # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.

layered_image = File.new("/path/to/file.txt") # File | Image to layer on top of the base image.


begin
  #Composite two images together
  result = api_instance.edit_composite_basic(location, base_image, layered_image)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling EditApi->edit_composite_basic: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | **String**| Location to composite the layered images; possible values are: \&quot;center\&quot;, \&quot;top-left\&quot;, \&quot;top-center\&quot;, \&quot;top-right\&quot;, \&quot;center-left\&quot;, \&quot;center-right\&quot;, \&quot;bottom-left\&quot;, \&quot;bottom-center\&quot;, \&quot;bottom-right\&quot; | 
 **base_image** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 
 **layered_image** | **File**| Image to layer on top of the base image. | 

### Return type

**Object**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: image/png



# **edit_draw_rectangle**
> Object edit_draw_rectangle(request)

Draw rectangle onto an image

Draw one or more rectangles, with customized visuals, onto an image

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

api_instance = CloudmersiveImageRecognitionApiClient::EditApi.new

request = CloudmersiveImageRecognitionApiClient::DrawRectangleRequest.new # DrawRectangleRequest | 


begin
  #Draw rectangle onto an image
  result = api_instance.edit_draw_rectangle(request)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling EditApi->edit_draw_rectangle: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**DrawRectangleRequest**](DrawRectangleRequest.md)|  | 

### Return type

**Object**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: image/png



# **edit_draw_text**
> Object edit_draw_text(request)

Draw text onto an image

Draw one or more pieces of text, with customized visuals, onto an image

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

api_instance = CloudmersiveImageRecognitionApiClient::EditApi.new

request = CloudmersiveImageRecognitionApiClient::DrawTextRequest.new # DrawTextRequest | 


begin
  #Draw text onto an image
  result = api_instance.edit_draw_text(request)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling EditApi->edit_draw_text: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**DrawTextRequest**](DrawTextRequest.md)|  | 

### Return type

**Object**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: image/png



