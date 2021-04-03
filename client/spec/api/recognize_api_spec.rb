=begin
#imageapi

#Image Recognition and Processing APIs let you use Machine Learning to recognize and process images, and also perform useful image modification operations.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'spec_helper'
require 'json'

# Unit tests for CloudmersiveImageRecognitionApiClient::RecognizeApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RecognizeApi' do
  before do
    # run before each test
    @instance = CloudmersiveImageRecognitionApiClient::RecognizeApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RecognizeApi' do
    it 'should create an instance of RecognizeApi' do
      expect(@instance).to be_instance_of(CloudmersiveImageRecognitionApiClient::RecognizeApi)
    end
  end

  # unit tests for recognize_describe
  # Describe an image in natural language
  # Generate an English language text description of the image as a sentence.
  # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
  # @param [Hash] opts the optional parameters
  # @return [ImageDescriptionResponse]
  describe 'recognize_describe test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for recognize_detect_and_unskew_document
  # Detect and unskew a photo of a document
  # Detect and unskew a photo of a document (e.g. taken on a cell phone) into a perfectly square image.  Great for document scanning applications; once unskewed, this image is perfect for converting to PDF using the Convert API or optical character recognition using the OCR API.
  # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :post_processing_effect Optional, post-processing effects to apply to the email, default is None.  Possible values are None and BlackAndWhite (force the image into a black and white view to aid in OCR operations).
  # @return [String]
  describe 'recognize_detect_and_unskew_document test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for recognize_detect_objects
  # Detect objects including types and locations in an image
  # Identify the position, size and description of objects in an image, along with a recognition confidence level.  Detects both human people and objects in an image.
  # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
  # @param [Hash] opts the optional parameters
  # @return [ObjectDetectionResult]
  describe 'recognize_detect_objects test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for recognize_detect_people
  # Detect people including locations in an image
  # Identify the position, and size of human people in an image, along with a recognition confidence level.  People in the image do NOT need to be facing the camera; they can be facing away, edge-on, etc.
  # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
  # @param [Hash] opts the optional parameters
  # @return [ObjectDetectionResult]
  describe 'recognize_detect_people test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for recognize_detect_text_fine
  # Detect fine text in a photo of a document
  # Identify the position, and size of small/fine text within a photograph of a document.  Identify the location of small text in a photo - such as words and other forms of high density text.  Can be used on a scan of a document or a photograph (e.g. smartphone camera) of a document, page or receipt.  For OCR purposes - please see our Deep Learning OCR APIs.
  # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
  # @param [Hash] opts the optional parameters
  # @return [FineTextDetectionResult]
  describe 'recognize_detect_text_fine test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for recognize_detect_text_large
  # Detect large text in a photo
  # Identify the position, and size of large text within a photograph.  Identify the location of large text in a photo - such as signs, titles, etc. and other forms of large, low-density text.  Not suitable for high-density text (e.g. scans of documents, receipts, etc.) for OCR purposes - for OCR, please see our Deep Learning OCR APIs.
  # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
  # @param [Hash] opts the optional parameters
  # @return [TextDetectionResult]
  describe 'recognize_detect_text_large test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for recognize_detect_vehicle_license_plates
  # Detect vehicle license plates in an image
  # Identify the position, and size, and content of vehicle license plates in an image.  License plates should be within 15-20 degrees on-axis to the camera.  Supported image formats are JPG, PNG and BMP.
  # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
  # @param [Hash] opts the optional parameters
  # @return [VehicleLicensePlateDetectionResult]
  describe 'recognize_detect_vehicle_license_plates test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for recognize_find_symbol
  # Find the location of a symbol in an image
  # Determine if an image contains a symbol, and if so, the location of that symbol in the image.
  # @param input_image Image file to search through for the target image.
  # @param target_image Image to find in the input image.
  # @param [Hash] opts the optional parameters
  # @return [FindSymbolResult]
  describe 'recognize_find_symbol test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for recognize_similarity_compare
  # Compare two images for similarity
  # Generates an image similarity score using Deep Learning between 0.0 and 1.0, values closer to 1.0 indicate greater similarity
  # @param base_image Image file to compare against.  Common file formats such as PNG, JPEG are supported.
  # @param comparison_image Image to compare to the base image.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :recognition_mode Optional, specify the recognition mode; possible values are Normal, Basic and Advanced.  Default is Normal.
  # @return [String]
  describe 'recognize_similarity_compare test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for recognize_similarity_hash
  # Generate a perceptual image hash
  # Generates a hash value for the image; hash values that are closer together in terms of Hamming Distance are more similar.
  # @param image_file Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :recognition_mode Optional, specify the recognition mode; possible values are Normal, Basic and Advanced.  Default is Normal.
  # @return [ImageSimilarityHashResponse]
  describe 'recognize_similarity_hash test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for recognize_similarity_hash_distance
  # Calculates the similarity between two perceptual image hashes
  # Calculates the similarity between two perceptual image hashes by computing the Hamming Distance between them.
  # @param request 
  # @param [Hash] opts the optional parameters
  # @return [ImageSimilarityHashDistanceResponse]
  describe 'recognize_similarity_hash_distance test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
