# CloudmersiveImageRecognitionApiClient::DetectedObject

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**object_class_name** | **String** | Class of the object.  Example values are \&quot;person\&quot;, \&quot;car\&quot;, \&quot;dining table\&quot;, etc. | [optional] 
**height** | **Integer** | Height, in pixels, of the object | [optional] 
**width** | **Integer** | Width, in pixels, of the object | [optional] 
**score** | **Float** | Confidence score of detected object; possible values are between 0.0 and 1.0; values closer to 1.0 are higher confidence | [optional] 
**x** | **Integer** | X location, in pixels, of the left side location of the object, with the right side being X + Width | [optional] 
**y** | **Integer** | Y location, in pixels, of the top side location of the object, with the bottom side being Y + Height | [optional] 


