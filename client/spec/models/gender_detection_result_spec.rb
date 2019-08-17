=begin
#imageapi

#Image Recognition and Processing APIs let you use Machine Learning to recognize and process images, and also perform useful image modification operations.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CloudmersiveImageRecognitionApiClient::GenderDetectionResult
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GenderDetectionResult' do
  before do
    # run before each test
    @instance = CloudmersiveImageRecognitionApiClient::GenderDetectionResult.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GenderDetectionResult' do
    it 'should create an instance of GenderDetectionResult' do
      expect(@instance).to be_instance_of(CloudmersiveImageRecognitionApiClient::GenderDetectionResult)
    end
  end
  describe 'test attribute "successful"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "person_with_gender"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "people_identified"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

