# CloudmersiveImageRecognitionApiClient::DrawRectangleRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**base_image_bytes** | **String** | Image to draw rectangles on, in bytes.  You can also use the BaseImageUrl instead to supply image input as a URL | [optional] 
**base_image_url** | **String** | Image to draw rectangles on, as an HTTP or HTTPS fully-qualified URL | [optional] 
**rectangles_to_draw** | [**Array&lt;DrawRectangleInstance&gt;**](DrawRectangleInstance.md) | Rectangles to draw on the image.  Rectangles are drawn in index order. | [optional] 


