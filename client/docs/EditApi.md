# CloudmersiveImageRecognitionApiClient::EditApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**edit_auto_orient**](EditApi.md#edit_auto_orient) | **POST** /image/edit/auto-orient/remove-exif | Normalizes image rotation and removes EXIF rotation data
[**edit_composite_basic**](EditApi.md#edit_composite_basic) | **POST** /image/edit/composite/{location} | Composite two images together
[**edit_contrast_adaptive**](EditApi.md#edit_contrast_adaptive) | **POST** /image/edit/contrast/{gamma}/adaptive | Adaptively adjust the contrast of the image to be more appealing and easy to see
[**edit_crop_rectangle**](EditApi.md#edit_crop_rectangle) | **POST** /image/edit/crop/rectangle/{left}/{top}/{width}/{height} | Crop an image to a rectangular area
[**edit_draw_polygon**](EditApi.md#edit_draw_polygon) | **POST** /image/edit/draw/polygon | Draw a polygon onto an image
[**edit_draw_rectangle**](EditApi.md#edit_draw_rectangle) | **POST** /image/edit/draw/rectangle | Draw a rectangle onto an image
[**edit_draw_text**](EditApi.md#edit_draw_text) | **POST** /image/edit/draw/text | Draw text onto an image
[**edit_drop_shadow**](EditApi.md#edit_drop_shadow) | **POST** /image/edit/drop-shadow/{X}/{Y}/{sigma}/{opacity} | Add a customizeable drop shadow to an image
[**edit_invert**](EditApi.md#edit_invert) | **POST** /image/edit/invert | Invert, negate the colors in the image
[**edit_remove_exif_data**](EditApi.md#edit_remove_exif_data) | **POST** /image/edit/remove-exif | Remove EXIF data from the image
[**edit_remove_transparency**](EditApi.md#edit_remove_transparency) | **POST** /image/edit/remove-transparency | Remove transparency from the image
[**edit_rotate**](EditApi.md#edit_rotate) | **POST** /image/edit/rotate/{degrees}/angle | Rotate an image any number of degrees


# **edit_auto_orient**
> String edit_auto_orient(image_file)

Normalizes image rotation and removes EXIF rotation data

Automatically orients the input image based on EXIF information and then removes the EXIF information.  EXIF is an additional set of information stored in some images taken with cell phone cameras based on the orientation of the camera.  By normalizing rotation and removing EXIF data these images become much easier to process.

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

image_file = File.new("/path/to/file.txt") # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Normalizes image rotation and removes EXIF rotation data
  result = api_instance.edit_auto_orient(image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling EditApi->edit_auto_orient: #{e}"
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



# **edit_composite_basic**
> String edit_composite_basic(location, base_image, layered_image)

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

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream



# **edit_contrast_adaptive**
> String edit_contrast_adaptive(gamma, image_file)

Adaptively adjust the contrast of the image to be more appealing and easy to see

Uses Gamma to adjust the contrast adaptively the way the human eye sees the world.  Results significantly improve the viewability and visual appeal of the image.

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

gamma = 1.2 # Float | Gamma value to adjust the contrast in the image.  Recommended value is 2.0.  Values between 0.0 and 1.0 will reduce contrast, while values above 1.0 will increase contrast.

image_file = File.new("/path/to/file.txt") # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Adaptively adjust the contrast of the image to be more appealing and easy to see
  result = api_instance.edit_contrast_adaptive(gamma, image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling EditApi->edit_contrast_adaptive: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gamma** | **Float**| Gamma value to adjust the contrast in the image.  Recommended value is 2.0.  Values between 0.0 and 1.0 will reduce contrast, while values above 1.0 will increase contrast. | 
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream



# **edit_crop_rectangle**
> String edit_crop_rectangle(left, top, width, height, image_file)

Crop an image to a rectangular area

Crop an image to a target rectangular area

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

left = 56 # Integer | The left edge of the rectangular crop area in pixels (X).

top = 56 # Integer | The top edge of the rectangular crop area in pixels (Y).

width = 56 # Integer | The width of the rectangular crop area in pixels.

height = 56 # Integer | The height of the rectangular crop area in pixels.

image_file = File.new("/path/to/file.txt") # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Crop an image to a rectangular area
  result = api_instance.edit_crop_rectangle(left, top, width, height, image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling EditApi->edit_crop_rectangle: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **left** | **Integer**| The left edge of the rectangular crop area in pixels (X). | 
 **top** | **Integer**| The top edge of the rectangular crop area in pixels (Y). | 
 **width** | **Integer**| The width of the rectangular crop area in pixels. | 
 **height** | **Integer**| The height of the rectangular crop area in pixels. | 
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream



# **edit_draw_polygon**
> String edit_draw_polygon(request)

Draw a polygon onto an image

Draw one or more polygons, with customized visuals, onto an image

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

request = CloudmersiveImageRecognitionApiClient::DrawPolygonRequest.new # DrawPolygonRequest | Polygon drawing request parameters


begin
  #Draw a polygon onto an image
  result = api_instance.edit_draw_polygon(request)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling EditApi->edit_draw_polygon: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**DrawPolygonRequest**](DrawPolygonRequest.md)| Polygon drawing request parameters | 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream



# **edit_draw_rectangle**
> String edit_draw_rectangle(request)

Draw a rectangle onto an image

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

request = CloudmersiveImageRecognitionApiClient::DrawRectangleRequest.new # DrawRectangleRequest | Draw rectangle parameters


begin
  #Draw a rectangle onto an image
  result = api_instance.edit_draw_rectangle(request)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling EditApi->edit_draw_rectangle: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**DrawRectangleRequest**](DrawRectangleRequest.md)| Draw rectangle parameters | 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream



# **edit_draw_text**
> String edit_draw_text(request)

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

request = CloudmersiveImageRecognitionApiClient::DrawTextRequest.new # DrawTextRequest | Draw text parameters


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
 **request** | [**DrawTextRequest**](DrawTextRequest.md)| Draw text parameters | 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream



# **edit_drop_shadow**
> String edit_drop_shadow(x, y, sigma, opacity, image_file)

Add a customizeable drop shadow to an image

Add a customizeable drop shadow to the image

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

x = 56 # Integer | Horizontal (X) offset of the drop shadow

y = 56 # Integer | Vertical (Y) offset of the drop shadow

sigma = 56 # Integer | Sigma (blur distance) of the drop shadow

opacity = 56 # Integer | Opacity of the drop shadow; 0 is 0% and 100 is 100%

image_file = File.new("/path/to/file.txt") # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Add a customizeable drop shadow to an image
  result = api_instance.edit_drop_shadow(x, y, sigma, opacity, image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling EditApi->edit_drop_shadow: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x** | **Integer**| Horizontal (X) offset of the drop shadow | 
 **y** | **Integer**| Vertical (Y) offset of the drop shadow | 
 **sigma** | **Integer**| Sigma (blur distance) of the drop shadow | 
 **opacity** | **Integer**| Opacity of the drop shadow; 0 is 0% and 100 is 100% | 
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream



# **edit_invert**
> String edit_invert(image_file)

Invert, negate the colors in the image

Inverts (negates) all of the colors in the image.  If the image contains transparency, the transparency will first be removed prior to inverting the image.

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

image_file = File.new("/path/to/file.txt") # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Invert, negate the colors in the image
  result = api_instance.edit_invert(image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling EditApi->edit_invert: #{e}"
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



# **edit_remove_exif_data**
> String edit_remove_exif_data(image_file)

Remove EXIF data from the image

Removes any EXIF data and profiles .

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

image_file = File.new("/path/to/file.txt") # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Remove EXIF data from the image
  result = api_instance.edit_remove_exif_data(image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling EditApi->edit_remove_exif_data: #{e}"
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



# **edit_remove_transparency**
> String edit_remove_transparency(image_file)

Remove transparency from the image

Removes any active transparency in the image.  Effectively renders the image at the same resolution, in the same file format, over a white background, thus removing transparency.

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

image_file = File.new("/path/to/file.txt") # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Remove transparency from the image
  result = api_instance.edit_remove_transparency(image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling EditApi->edit_remove_transparency: #{e}"
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



# **edit_rotate**
> String edit_rotate(degrees, image_file)

Rotate an image any number of degrees

Rotates an image by an arbitrary number of degrees

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

degrees = 1.2 # Float | Degrees to rotate the image; values range from 0.0 to 360.0.

image_file = File.new("/path/to/file.txt") # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Rotate an image any number of degrees
  result = api_instance.edit_rotate(degrees, image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling EditApi->edit_rotate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **degrees** | **Float**| Degrees to rotate the image; values range from 0.0 to 360.0. | 
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream



