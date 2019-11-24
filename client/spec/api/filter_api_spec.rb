=begin
#imageapi

#Image Recognition and Processing APIs let you use Machine Learning to recognize and process images, and also perform useful image modification operations.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for CloudmersiveImageRecognitionApiClient::FilterApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FilterApi' do
  before do
    # run before each test
    @instance = CloudmersiveImageRecognitionApiClient::FilterApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FilterApi' do
    it 'should create an instance of FilterApi' do
      expect(@instance).to be_instance_of(CloudmersiveImageRecognitionApiClient::FilterApi)
    end
  end

  # unit tests for filter_black_and_white
  # Convert image to black-and-white grayscale
  # Remove color from the image by converting to a grayscale, black-and-white image
  # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'filter_black_and_white test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for filter_despeckle
  # Despeckle (remove point noise) from the image
  # Remove point noise / despeckle the input image
  # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'filter_despeckle test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for filter_edge_detect
  # Detect and highlight edges in an image
  # Perform an edge detection operation on the input image
  # @param radius Radius in pixels of the edge detection operation; a larger radius will produce a greater effect
  # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'filter_edge_detect test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for filter_emboss
  # Emboss an image
  # Perform an emboss operation on the input image
  # @param radius Radius in pixels of the emboss operation; a larger radius will produce a greater effect
  # @param sigma Sigma, or variance, of the emboss operation
  # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'filter_emboss test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for filter_gaussian_blur
  # Perform a guassian blur on the input image
  # Perform a gaussian blur on the input image
  # @param radius Radius in pixels of the blur operation; a larger radius will produce a greater blur effect
  # @param sigma Sigma, or variance, of the gaussian blur operation
  # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'filter_gaussian_blur test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for filter_motion_blur
  # Perform a motion blur on the input image
  # Perform a motion blur on the input image at a specific angle
  # @param radius Radius in pixels of the blur operation; a larger radius will produce a greater blur effect
  # @param sigma Sigma, or variance, of the motion blur operation
  # @param angle Angle of the motion blur in degrees
  # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'filter_motion_blur test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for filter_posterize
  # Posterize the image by reducing distinct colors
  # Reduce the unique number of colors in the image to the specified level
  # @param levels Number of unique colors to retain in the output image
  # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'filter_posterize test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for filter_swirl
  # Swirl distort the image
  # Swirl distort the image by the specified number of degrees
  # @param degrees Degrees of swirl
  # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'filter_swirl test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
