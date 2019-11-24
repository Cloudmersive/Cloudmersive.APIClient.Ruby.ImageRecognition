=begin
#imageapi

#Image Recognition and Processing APIs let you use Machine Learning to recognize and process images, and also perform useful image modification operations.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module CloudmersiveImageRecognitionApiClient
  class ResizeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Resize an image while preserving aspect ratio
    # Resize an image to a maximum width and maximum height, while preserving the image's original aspect ratio
    # @param max_width Maximum width of the output image - final image will be as large as possible while less than or equial to this width
    # @param max_height Maximum height of the output image - final image will be as large as possible while less than or equial to this height
    # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def resize_post(max_width, max_height, image_file, opts = {})
      data, _status_code, _headers = resize_post_with_http_info(max_width, max_height, image_file, opts)
      return data
    end

    # Resize an image while preserving aspect ratio
    # Resize an image to a maximum width and maximum height, while preserving the image&#39;s original aspect ratio
    # @param max_width Maximum width of the output image - final image will be as large as possible while less than or equial to this width
    # @param max_height Maximum height of the output image - final image will be as large as possible while less than or equial to this height
    # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def resize_post_with_http_info(max_width, max_height, image_file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ResizeApi.resize_post ..."
      end
      # verify the required parameter 'max_width' is set
      if @api_client.config.client_side_validation && max_width.nil?
        fail ArgumentError, "Missing the required parameter 'max_width' when calling ResizeApi.resize_post"
      end
      # verify the required parameter 'max_height' is set
      if @api_client.config.client_side_validation && max_height.nil?
        fail ArgumentError, "Missing the required parameter 'max_height' when calling ResizeApi.resize_post"
      end
      # verify the required parameter 'image_file' is set
      if @api_client.config.client_side_validation && image_file.nil?
        fail ArgumentError, "Missing the required parameter 'image_file' when calling ResizeApi.resize_post"
      end
      # resource path
      local_var_path = "/image/resize/preserveAspectRatio/{maxWidth}/{maxHeight}".sub('{' + 'maxWidth' + '}', max_width.to_s).sub('{' + 'maxHeight' + '}', max_height.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['image/png'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params["imageFile"] = image_file

      # http body (model)
      post_body = nil
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResizeApi#resize_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Resize an image
    # Resize an image to a specific width and specific height
    # @param width 
    # @param height 
    # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def resize_resize_simple(width, height, image_file, opts = {})
      data, _status_code, _headers = resize_resize_simple_with_http_info(width, height, image_file, opts)
      return data
    end

    # Resize an image
    # Resize an image to a specific width and specific height
    # @param width 
    # @param height 
    # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def resize_resize_simple_with_http_info(width, height, image_file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ResizeApi.resize_resize_simple ..."
      end
      # verify the required parameter 'width' is set
      if @api_client.config.client_side_validation && width.nil?
        fail ArgumentError, "Missing the required parameter 'width' when calling ResizeApi.resize_resize_simple"
      end
      # verify the required parameter 'height' is set
      if @api_client.config.client_side_validation && height.nil?
        fail ArgumentError, "Missing the required parameter 'height' when calling ResizeApi.resize_resize_simple"
      end
      # verify the required parameter 'image_file' is set
      if @api_client.config.client_side_validation && image_file.nil?
        fail ArgumentError, "Missing the required parameter 'image_file' when calling ResizeApi.resize_resize_simple"
      end
      # resource path
      local_var_path = "/image/resize/target/{width}/{height}".sub('{' + 'width' + '}', width.to_s).sub('{' + 'height' + '}', height.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['image/png'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params["imageFile"] = image_file

      # http body (model)
      post_body = nil
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResizeApi#resize_resize_simple\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
