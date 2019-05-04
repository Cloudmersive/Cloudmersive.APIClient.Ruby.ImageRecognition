# CloudmersiveImageRecognitionApiClient::ResizeApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**resize_post**](ResizeApi.md#resize_post) | **POST** /image/resize/preserveAspectRatio/{maxWidth}/{maxHeight} | Resize an image with parameters


# **resize_post**
> String resize_post(max_width, max_height, image_file)

Resize an image with parameters

Resize an image to a maximum width and maximum height, while preserving the image's original aspect ratio

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

api_instance = CloudmersiveImageRecognitionApiClient::ResizeApi.new

max_width = 56 # Integer | Maximum width of the output image - final image will be as large as possible while less than or equial to this width

max_height = 56 # Integer | Maximum height of the output image - final image will be as large as possible while less than or equial to this height

image_file = File.new("/path/to/file.txt") # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Resize an image with parameters
  result = api_instance.resize_post(max_width, max_height, image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling ResizeApi->resize_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **max_width** | **Integer**| Maximum width of the output image - final image will be as large as possible while less than or equial to this width | 
 **max_height** | **Integer**| Maximum height of the output image - final image will be as large as possible while less than or equial to this height | 
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: image/png


