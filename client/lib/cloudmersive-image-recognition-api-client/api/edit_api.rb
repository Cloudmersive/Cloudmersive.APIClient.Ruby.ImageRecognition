=begin
#imageapi

#Image Recognition and Processing APIs let you use Machine Learning to recognize and process images, and also perform useful image modification operations.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module CloudmersiveImageRecognitionApiClient
  class EditApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Normalizes image rotation and removes EXIF rotation data
    # Automatically orients the input image based on EXIF information and then removes the EXIF information.  EXIF is an additional set of information stored in some images taken with cell phone cameras based on the orientation of the camera.  By normalizing rotation and removing EXIF data these images become much easier to process.
    # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def edit_auto_orient(image_file, opts = {})
      data, _status_code, _headers = edit_auto_orient_with_http_info(image_file, opts)
      return data
    end

    # Normalizes image rotation and removes EXIF rotation data
    # Automatically orients the input image based on EXIF information and then removes the EXIF information.  EXIF is an additional set of information stored in some images taken with cell phone cameras based on the orientation of the camera.  By normalizing rotation and removing EXIF data these images become much easier to process.
    # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def edit_auto_orient_with_http_info(image_file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EditApi.edit_auto_orient ..."
      end
      # verify the required parameter 'image_file' is set
      if @api_client.config.client_side_validation && image_file.nil?
        fail ArgumentError, "Missing the required parameter 'image_file' when calling EditApi.edit_auto_orient"
      end
      # resource path
      local_var_path = "/image/edit/auto-orient/remove-exif"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream'])
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
        @api_client.config.logger.debug "API called: EditApi#edit_auto_orient\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Composite two images together
    # Composites two input images together; a layered image onto a base image.  The first image you input is the base image.  The second image (the layered image) will be composited on top of this base image.  Supports PNG transparency.  To control padding you can include transparent pixels at the border(s) of your layered images as appropriate.
    # @param location Location to composite the layered images; possible values are: \&quot;center\&quot;, \&quot;top-left\&quot;, \&quot;top-center\&quot;, \&quot;top-right\&quot;, \&quot;center-left\&quot;, \&quot;center-right\&quot;, \&quot;bottom-left\&quot;, \&quot;bottom-center\&quot;, \&quot;bottom-right\&quot;
    # @param base_image Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
    # @param layered_image Image to layer on top of the base image.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def edit_composite_basic(location, base_image, layered_image, opts = {})
      data, _status_code, _headers = edit_composite_basic_with_http_info(location, base_image, layered_image, opts)
      return data
    end

    # Composite two images together
    # Composites two input images together; a layered image onto a base image.  The first image you input is the base image.  The second image (the layered image) will be composited on top of this base image.  Supports PNG transparency.  To control padding you can include transparent pixels at the border(s) of your layered images as appropriate.
    # @param location Location to composite the layered images; possible values are: \&quot;center\&quot;, \&quot;top-left\&quot;, \&quot;top-center\&quot;, \&quot;top-right\&quot;, \&quot;center-left\&quot;, \&quot;center-right\&quot;, \&quot;bottom-left\&quot;, \&quot;bottom-center\&quot;, \&quot;bottom-right\&quot;
    # @param base_image Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
    # @param layered_image Image to layer on top of the base image.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def edit_composite_basic_with_http_info(location, base_image, layered_image, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EditApi.edit_composite_basic ..."
      end
      # verify the required parameter 'location' is set
      if @api_client.config.client_side_validation && location.nil?
        fail ArgumentError, "Missing the required parameter 'location' when calling EditApi.edit_composite_basic"
      end
      # verify the required parameter 'base_image' is set
      if @api_client.config.client_side_validation && base_image.nil?
        fail ArgumentError, "Missing the required parameter 'base_image' when calling EditApi.edit_composite_basic"
      end
      # verify the required parameter 'layered_image' is set
      if @api_client.config.client_side_validation && layered_image.nil?
        fail ArgumentError, "Missing the required parameter 'layered_image' when calling EditApi.edit_composite_basic"
      end
      # resource path
      local_var_path = "/image/edit/composite/{location}".sub('{' + 'location' + '}', location.to_s)

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
      form_params["baseImage"] = base_image
      form_params["layeredImage"] = layered_image

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
        @api_client.config.logger.debug "API called: EditApi#edit_composite_basic\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adaptively adjust the contrast of the image to be more appealing and easy to see
    # Uses Gamma to adjust the contrast adaptively the way the human eye sees the world.  Results significantly improve the viewability and visual appeal of the image.
    # @param gamma Gamma value to adjust the contrast in the image.  Recommended value is 2.0.  Values between 0.0 and 1.0 will reduce contrast, while values above 1.0 will increase contrast.
    # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def edit_contrast_adaptive(gamma, image_file, opts = {})
      data, _status_code, _headers = edit_contrast_adaptive_with_http_info(gamma, image_file, opts)
      return data
    end

    # Adaptively adjust the contrast of the image to be more appealing and easy to see
    # Uses Gamma to adjust the contrast adaptively the way the human eye sees the world.  Results significantly improve the viewability and visual appeal of the image.
    # @param gamma Gamma value to adjust the contrast in the image.  Recommended value is 2.0.  Values between 0.0 and 1.0 will reduce contrast, while values above 1.0 will increase contrast.
    # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def edit_contrast_adaptive_with_http_info(gamma, image_file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EditApi.edit_contrast_adaptive ..."
      end
      # verify the required parameter 'gamma' is set
      if @api_client.config.client_side_validation && gamma.nil?
        fail ArgumentError, "Missing the required parameter 'gamma' when calling EditApi.edit_contrast_adaptive"
      end
      # verify the required parameter 'image_file' is set
      if @api_client.config.client_side_validation && image_file.nil?
        fail ArgumentError, "Missing the required parameter 'image_file' when calling EditApi.edit_contrast_adaptive"
      end
      # resource path
      local_var_path = "/image/edit/contrast/{gamma}/adaptive".sub('{' + 'gamma' + '}', gamma.to_s)

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
        @api_client.config.logger.debug "API called: EditApi#edit_contrast_adaptive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Crop an image to a rectangular area
    # Crop an image to a target rectangular area
    # @param left The left edge of the rectangular crop area in pixels (X).
    # @param top The top edge of the rectangular crop area in pixels (Y).
    # @param width The width of the rectangular crop area in pixels.
    # @param height The height of the rectangular crop area in pixels.
    # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def edit_crop_rectangle(left, top, width, height, image_file, opts = {})
      data, _status_code, _headers = edit_crop_rectangle_with_http_info(left, top, width, height, image_file, opts)
      return data
    end

    # Crop an image to a rectangular area
    # Crop an image to a target rectangular area
    # @param left The left edge of the rectangular crop area in pixels (X).
    # @param top The top edge of the rectangular crop area in pixels (Y).
    # @param width The width of the rectangular crop area in pixels.
    # @param height The height of the rectangular crop area in pixels.
    # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def edit_crop_rectangle_with_http_info(left, top, width, height, image_file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EditApi.edit_crop_rectangle ..."
      end
      # verify the required parameter 'left' is set
      if @api_client.config.client_side_validation && left.nil?
        fail ArgumentError, "Missing the required parameter 'left' when calling EditApi.edit_crop_rectangle"
      end
      # verify the required parameter 'top' is set
      if @api_client.config.client_side_validation && top.nil?
        fail ArgumentError, "Missing the required parameter 'top' when calling EditApi.edit_crop_rectangle"
      end
      # verify the required parameter 'width' is set
      if @api_client.config.client_side_validation && width.nil?
        fail ArgumentError, "Missing the required parameter 'width' when calling EditApi.edit_crop_rectangle"
      end
      # verify the required parameter 'height' is set
      if @api_client.config.client_side_validation && height.nil?
        fail ArgumentError, "Missing the required parameter 'height' when calling EditApi.edit_crop_rectangle"
      end
      # verify the required parameter 'image_file' is set
      if @api_client.config.client_side_validation && image_file.nil?
        fail ArgumentError, "Missing the required parameter 'image_file' when calling EditApi.edit_crop_rectangle"
      end
      # resource path
      local_var_path = "/image/edit/crop/rectangle/{left}/{top}/{width}/{height}".sub('{' + 'left' + '}', left.to_s).sub('{' + 'top' + '}', top.to_s).sub('{' + 'width' + '}', width.to_s).sub('{' + 'height' + '}', height.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream'])
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
        @api_client.config.logger.debug "API called: EditApi#edit_crop_rectangle\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Draw a polygon onto an image
    # Draw one or more polygons, with customized visuals, onto an image
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [String]
    def edit_draw_polygon(request, opts = {})
      data, _status_code, _headers = edit_draw_polygon_with_http_info(request, opts)
      return data
    end

    # Draw a polygon onto an image
    # Draw one or more polygons, with customized visuals, onto an image
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def edit_draw_polygon_with_http_info(request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EditApi.edit_draw_polygon ..."
      end
      # verify the required parameter 'request' is set
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling EditApi.edit_draw_polygon"
      end
      # resource path
      local_var_path = "/image/edit/draw/polygon"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['image/png'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json', 'application/xml', 'text/xml', 'application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EditApi#edit_draw_polygon\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Draw a rectangle onto an image
    # Draw one or more rectangles, with customized visuals, onto an image
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [String]
    def edit_draw_rectangle(request, opts = {})
      data, _status_code, _headers = edit_draw_rectangle_with_http_info(request, opts)
      return data
    end

    # Draw a rectangle onto an image
    # Draw one or more rectangles, with customized visuals, onto an image
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def edit_draw_rectangle_with_http_info(request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EditApi.edit_draw_rectangle ..."
      end
      # verify the required parameter 'request' is set
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling EditApi.edit_draw_rectangle"
      end
      # resource path
      local_var_path = "/image/edit/draw/rectangle"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['image/png'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json', 'application/xml', 'text/xml', 'application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EditApi#edit_draw_rectangle\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Draw text onto an image
    # Draw one or more pieces of text, with customized visuals, onto an image
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [String]
    def edit_draw_text(request, opts = {})
      data, _status_code, _headers = edit_draw_text_with_http_info(request, opts)
      return data
    end

    # Draw text onto an image
    # Draw one or more pieces of text, with customized visuals, onto an image
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def edit_draw_text_with_http_info(request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EditApi.edit_draw_text ..."
      end
      # verify the required parameter 'request' is set
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling EditApi.edit_draw_text"
      end
      # resource path
      local_var_path = "/image/edit/draw/text"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['image/png'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json', 'application/xml', 'text/xml', 'application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EditApi#edit_draw_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a customizeable drop shadow to an image
    # Add a customizeable drop shadow to the image
    # @param x Horizontal (X) offset of the drop shadow
    # @param y Vertical (Y) offset of the drop shadow
    # @param sigma Sigma (blur distance) of the drop shadow
    # @param opacity Opacity of the drop shadow; 0 is 0% and 100 is 100%
    # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def edit_drop_shadow(x, y, sigma, opacity, image_file, opts = {})
      data, _status_code, _headers = edit_drop_shadow_with_http_info(x, y, sigma, opacity, image_file, opts)
      return data
    end

    # Add a customizeable drop shadow to an image
    # Add a customizeable drop shadow to the image
    # @param x Horizontal (X) offset of the drop shadow
    # @param y Vertical (Y) offset of the drop shadow
    # @param sigma Sigma (blur distance) of the drop shadow
    # @param opacity Opacity of the drop shadow; 0 is 0% and 100 is 100%
    # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def edit_drop_shadow_with_http_info(x, y, sigma, opacity, image_file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EditApi.edit_drop_shadow ..."
      end
      # verify the required parameter 'x' is set
      if @api_client.config.client_side_validation && x.nil?
        fail ArgumentError, "Missing the required parameter 'x' when calling EditApi.edit_drop_shadow"
      end
      # verify the required parameter 'y' is set
      if @api_client.config.client_side_validation && y.nil?
        fail ArgumentError, "Missing the required parameter 'y' when calling EditApi.edit_drop_shadow"
      end
      # verify the required parameter 'sigma' is set
      if @api_client.config.client_side_validation && sigma.nil?
        fail ArgumentError, "Missing the required parameter 'sigma' when calling EditApi.edit_drop_shadow"
      end
      # verify the required parameter 'opacity' is set
      if @api_client.config.client_side_validation && opacity.nil?
        fail ArgumentError, "Missing the required parameter 'opacity' when calling EditApi.edit_drop_shadow"
      end
      # verify the required parameter 'image_file' is set
      if @api_client.config.client_side_validation && image_file.nil?
        fail ArgumentError, "Missing the required parameter 'image_file' when calling EditApi.edit_drop_shadow"
      end
      # resource path
      local_var_path = "/image/edit/drop-shadow/{x}/{y}/{sigma}/{opacity}".sub('{' + 'x' + '}', x.to_s).sub('{' + 'y' + '}', y.to_s).sub('{' + 'sigma' + '}', sigma.to_s).sub('{' + 'opacity' + '}', opacity.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream'])
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
        @api_client.config.logger.debug "API called: EditApi#edit_drop_shadow\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Rotate an image any number of degrees
    # Rotates an image by an arbitrary number of degrees
    # @param degrees Degrees to rotate the image; values range from 0.0 to 360.0.
    # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def edit_rotate(degrees, image_file, opts = {})
      data, _status_code, _headers = edit_rotate_with_http_info(degrees, image_file, opts)
      return data
    end

    # Rotate an image any number of degrees
    # Rotates an image by an arbitrary number of degrees
    # @param degrees Degrees to rotate the image; values range from 0.0 to 360.0.
    # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def edit_rotate_with_http_info(degrees, image_file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EditApi.edit_rotate ..."
      end
      # verify the required parameter 'degrees' is set
      if @api_client.config.client_side_validation && degrees.nil?
        fail ArgumentError, "Missing the required parameter 'degrees' when calling EditApi.edit_rotate"
      end
      # verify the required parameter 'image_file' is set
      if @api_client.config.client_side_validation && image_file.nil?
        fail ArgumentError, "Missing the required parameter 'image_file' when calling EditApi.edit_rotate"
      end
      # resource path
      local_var_path = "/image/edit/rotate/{degrees}/angle".sub('{' + 'degrees' + '}', degrees.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream'])
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
        @api_client.config.logger.debug "API called: EditApi#edit_rotate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
