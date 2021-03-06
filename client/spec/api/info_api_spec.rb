=begin
#imageapi

#Image Recognition and Processing APIs let you use Machine Learning to recognize and process images, and also perform useful image modification operations.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'spec_helper'
require 'json'

# Unit tests for CloudmersiveImageRecognitionApiClient::InfoApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InfoApi' do
  before do
    # run before each test
    @instance = CloudmersiveImageRecognitionApiClient::InfoApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InfoApi' do
    it 'should create an instance of InfoApi' do
      expect(@instance).to be_instance_of(CloudmersiveImageRecognitionApiClient::InfoApi)
    end
  end

  # unit tests for info_get_dominant_color
  # Returns the dominant colors of the image
  # Uses advanced image processing to extract the top 5 dominant colors in the image, returned in the order of dominance with the most-dominant color first.  These are the primary perceptual colors used in the image as perceived by a viewer.
  # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
  # @param [Hash] opts the optional parameters
  # @return [DominantColorResult]
  describe 'info_get_dominant_color test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for info_get_metadata
  # Returns the image metadata including EXIF and resolution
  # Returns the metadata information on the image, including file type, EXIF (if available), and resolution.
  # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
  # @param [Hash] opts the optional parameters
  # @return [ImageMetadata]
  describe 'info_get_metadata test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
