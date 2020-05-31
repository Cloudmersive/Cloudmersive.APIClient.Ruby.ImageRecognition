=begin
#imageapi

#Image Recognition and Processing APIs let you use Machine Learning to recognize and process images, and also perform useful image modification operations.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'spec_helper'
require 'json'

# Unit tests for CloudmersiveImageRecognitionApiClient::ResizeApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ResizeApi' do
  before do
    # run before each test
    @instance = CloudmersiveImageRecognitionApiClient::ResizeApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ResizeApi' do
    it 'should create an instance of ResizeApi' do
      expect(@instance).to be_instance_of(CloudmersiveImageRecognitionApiClient::ResizeApi)
    end
  end

  # unit tests for resize_post
  # Resize an image while preserving aspect ratio
  # Resize an image to a maximum width and maximum height, while preserving the image&#39;s original aspect ratio.  Resize is EXIF-aware.
  # @param max_width Maximum width of the output image - final image will be as large as possible while less than or equial to this width
  # @param max_height Maximum height of the output image - final image will be as large as possible while less than or equial to this height
  # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'resize_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for resize_resize_simple
  # Resize an image
  # Resize an image to a specific width and specific height.  Resize is EXIF-aware.
  # @param width Width of the output image - final image will be exactly this width
  # @param height Height of the output image - final image will be exactly this height
  # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'resize_resize_simple test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
