# CloudmersiveImageRecognitionApiClient::DrawPolygonRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**base_image_bytes** | **String** | Image to draw polygons on, in bytes.  You can also use the BaseImageUrl instead to supply image input as a URL | [optional] 
**base_image_url** | **String** | Image to draw polygons on, as an HTTP or HTTPS fully-qualified URL | [optional] 
**polygons_to_draw** | [**Array&lt;DrawPolygonInstance&gt;**](DrawPolygonInstance.md) | Polygons to draw on the image.  Polygons are drawn in index order. | [optional] 


