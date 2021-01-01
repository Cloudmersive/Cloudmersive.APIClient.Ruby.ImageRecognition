=begin
#imageapi

#Image Recognition and Processing APIs let you use Machine Learning to recognize and process images, and also perform useful image modification operations.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

# Common files
require 'cloudmersive-image-recognition-api-client/api_client'
require 'cloudmersive-image-recognition-api-client/api_error'
require 'cloudmersive-image-recognition-api-client/version'
require 'cloudmersive-image-recognition-api-client/configuration'

# Models
require 'cloudmersive-image-recognition-api-client/models/age_detection_result'
require 'cloudmersive-image-recognition-api-client/models/color_result'
require 'cloudmersive-image-recognition-api-client/models/create_handwriting_request'
require 'cloudmersive-image-recognition-api-client/models/detected_license_plate'
require 'cloudmersive-image-recognition-api-client/models/detected_object'
require 'cloudmersive-image-recognition-api-client/models/dominant_color_result'
require 'cloudmersive-image-recognition-api-client/models/draw_polygon_instance'
require 'cloudmersive-image-recognition-api-client/models/draw_polygon_request'
require 'cloudmersive-image-recognition-api-client/models/draw_rectangle_instance'
require 'cloudmersive-image-recognition-api-client/models/draw_rectangle_request'
require 'cloudmersive-image-recognition-api-client/models/draw_text_instance'
require 'cloudmersive-image-recognition-api-client/models/draw_text_request'
require 'cloudmersive-image-recognition-api-client/models/face'
require 'cloudmersive-image-recognition-api-client/models/face_compare_response'
require 'cloudmersive-image-recognition-api-client/models/face_locate_response'
require 'cloudmersive-image-recognition-api-client/models/face_locate_with_landmarks_response'
require 'cloudmersive-image-recognition-api-client/models/face_match'
require 'cloudmersive-image-recognition-api-client/models/face_point'
require 'cloudmersive-image-recognition-api-client/models/face_with_landmarks'
require 'cloudmersive-image-recognition-api-client/models/find_symbol_result'
require 'cloudmersive-image-recognition-api-client/models/fine_text_detection_result'
require 'cloudmersive-image-recognition-api-client/models/fine_text_item'
require 'cloudmersive-image-recognition-api-client/models/gender_detection_result'
require 'cloudmersive-image-recognition-api-client/models/image_description_response'
require 'cloudmersive-image-recognition-api-client/models/image_metadata'
require 'cloudmersive-image-recognition-api-client/models/image_metadata_exif_value'
require 'cloudmersive-image-recognition-api-client/models/nsfw_result'
require 'cloudmersive-image-recognition-api-client/models/object_detection_result'
require 'cloudmersive-image-recognition-api-client/models/person_with_age'
require 'cloudmersive-image-recognition-api-client/models/person_with_gender'
require 'cloudmersive-image-recognition-api-client/models/polygon_point'
require 'cloudmersive-image-recognition-api-client/models/recognition_outcome'
require 'cloudmersive-image-recognition-api-client/models/text_detection_result'
require 'cloudmersive-image-recognition-api-client/models/text_item'
require 'cloudmersive-image-recognition-api-client/models/vehicle_license_plate_detection_result'

# APIs
require 'cloudmersive-image-recognition-api-client/api/artistic_api'
require 'cloudmersive-image-recognition-api-client/api/convert_api'
require 'cloudmersive-image-recognition-api-client/api/edit_api'
require 'cloudmersive-image-recognition-api-client/api/face_api'
require 'cloudmersive-image-recognition-api-client/api/filter_api'
require 'cloudmersive-image-recognition-api-client/api/info_api'
require 'cloudmersive-image-recognition-api-client/api/nsfw_api'
require 'cloudmersive-image-recognition-api-client/api/recognize_api'
require 'cloudmersive-image-recognition-api-client/api/resize_api'
require 'cloudmersive-image-recognition-api-client/api/text_generation_api'

module CloudmersiveImageRecognitionApiClient
  class << self
    # Customize default settings for the SDK using block.
    #   CloudmersiveImageRecognitionApiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
