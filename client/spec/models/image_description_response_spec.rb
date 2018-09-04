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

# Unit tests for CloudmersiveImageRecognitionApiClient::ImageDescriptionResponse
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ImageDescriptionResponse' do
  before do
    # run before each test
    @instance = CloudmersiveImageRecognitionApiClient::ImageDescriptionResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ImageDescriptionResponse' do
    it 'should create an instance of ImageDescriptionResponse' do
      expect(@instance).to be_instance_of(CloudmersiveImageRecognitionApiClient::ImageDescriptionResponse)
    end
  end
  describe 'test attribute "successful"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "highconfidence"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "best_outcome"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "runner_up_outcome"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

