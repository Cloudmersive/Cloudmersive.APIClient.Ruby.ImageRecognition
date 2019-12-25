# CloudmersiveImageRecognitionApiClient::ImageMetadata

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**successful** | **BOOLEAN** | True if the operation was successful, false otherwise | [optional] 
**is_valid_image** | **BOOLEAN** | True if the input image is a valid image file, false otherwise | [optional] 
**file_format** | **String** | File format of the image | [optional] 
**width** | **Integer** | Width of the image in pixels | [optional] 
**height** | **Integer** | Height of the image in pixels | [optional] 
**bit_depth** | **Integer** | Bits per pixel | [optional] 
**has_transparency** | **BOOLEAN** | True if the image has transaprency in the form of an alpha channel, false otherwise | [optional] 
**color_space** | **String** | Color space of the image | [optional] 
**exif_profile_name** | **String** | Name of the EXIF profile used | [optional] 
**exif_values** | [**Array&lt;ImageMetadataExifValue&gt;**](ImageMetadataExifValue.md) | EXIF tags and values embedded in the image | [optional] 


