# CloudmersiveImageRecognitionApiClient::NsfwApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**nsfw_classify**](NsfwApi.md#nsfw_classify) | **POST** /image/nsfw/classify | Not safe for work (NSFW) content classification for Images
[**nsfw_classify_advanced**](NsfwApi.md#nsfw_classify_advanced) | **POST** /image/nsfw/classify/advanced | Advanced content moderation and not safe for work (NSFW) content classification for Images
[**nsfw_classify_document**](NsfwApi.md#nsfw_classify_document) | **POST** /image/nsfw/classify/document | Not safe for work (NSFW) content classification for Documents
[**nsfw_classify_video**](NsfwApi.md#nsfw_classify_video) | **POST** /image/nsfw/classify/video | Not safe for work (NSFW) content classification for Video


# **nsfw_classify**
> NsfwResult nsfw_classify(image_file)

Not safe for work (NSFW) content classification for Images

Classify an image into Not Safe For Work (NSFW)/Pornographic/Nudity/Racy content and Safe Content.  Helpful for filtering out unsafe content when processing user images.  Input image should be JPG, PNG or GIF.  Consumes 20 API calls.

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

api_instance = CloudmersiveImageRecognitionApiClient::NsfwApi.new

image_file = File.new('/path/to/file.txt') # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Not safe for work (NSFW) content classification for Images
  result = api_instance.nsfw_classify(image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling NsfwApi->nsfw_classify: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**NsfwResult**](NsfwResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **nsfw_classify_advanced**
> NsfwAdvancedResult nsfw_classify_advanced(image_file)

Advanced content moderation and not safe for work (NSFW) content classification for Images

Uses advanced AI to classify an image into Not Safe For Work (NSFW) or not and determine if it contains nudity, graphic violence, non-graphic violence, self-harm, hate, potential illegal activity, medical imagery, or profanity.  Helpful for filtering out unsafe content when processing user images.  Input image should be JPG, PNG.  Consumes 100 API calls.  Requires Managed Instance or Private Cloud deployment, and a GPU.

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

api_instance = CloudmersiveImageRecognitionApiClient::NsfwApi.new

image_file = File.new('/path/to/file.txt') # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Advanced content moderation and not safe for work (NSFW) content classification for Images
  result = api_instance.nsfw_classify_advanced(image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling NsfwApi->nsfw_classify_advanced: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**NsfwAdvancedResult**](NsfwAdvancedResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **nsfw_classify_document**
> NsfwResult nsfw_classify_document(image_file)

Not safe for work (NSFW) content classification for Documents

Classify a document (PDF, DOCX, DOC, XLSX, XLS, PPTX, PPT) into Not Safe For Work (NSFW)/Pornographic/Nudity/Racy content and Safe Content.  Helpful for filtering out unsafe content when processing user images.  Consumes 20 API calls per image.

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

api_instance = CloudmersiveImageRecognitionApiClient::NsfwApi.new

image_file = File.new('/path/to/file.txt') # File | Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.


begin
  #Not safe for work (NSFW) content classification for Documents
  result = api_instance.nsfw_classify_document(image_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling NsfwApi->nsfw_classify_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_file** | **File**| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**NsfwResult**](NsfwResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **nsfw_classify_video**
> NsfwResult nsfw_classify_video(video_file)

Not safe for work (NSFW) content classification for Video

Classify a video into Not Safe For Work (NSFW)/Pornographic/Nudity/Racy content and Safe Content.  Helpful for filtering out unsafe content when processing user images.  Input image should be MP4, MOV, WEBM, MKV, AVI, FLV, MPG, GIF.  Consumes 20 API calls per frame analyzed.  Requires Cloudmersive Managed Instance or Private Cloud deployment.

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

api_instance = CloudmersiveImageRecognitionApiClient::NsfwApi.new

video_file = File.new('/path/to/file.txt') # File | Video file to perform the operation on.  Common file formats such as MP4, MPG are supported.


begin
  #Not safe for work (NSFW) content classification for Video
  result = api_instance.nsfw_classify_video(video_file)
  p result
rescue CloudmersiveImageRecognitionApiClient::ApiError => e
  puts "Exception when calling NsfwApi->nsfw_classify_video: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_file** | **File**| Video file to perform the operation on.  Common file formats such as MP4, MPG are supported. | 

### Return type

[**NsfwResult**](NsfwResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



