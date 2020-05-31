=begin
#imageapi

#Image Recognition and Processing APIs let you use Machine Learning to recognize and process images, and also perform useful image modification operations.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'date'

module CloudmersiveImageRecognitionApiClient
  # License plate found in the image
  class DetectedLicensePlate
    # Text from the license plate, highest-confidence result
    attr_accessor :license_plate_text_best_match

    # Alternate text from the license plate, based on second-highest-confidence result
    attr_accessor :license_plate_text_runner_up

    # X location of the left edge of the license plate, starting from the left edge of the photo (X = 0)
    attr_accessor :location_x

    # Y location of the top edge of the license plate, starting from the top edge of the photo (Y = 0)
    attr_accessor :location_y

    # Width of the license plate's location in pixels
    attr_accessor :width

    # Height of the license plate's location in pixels
    attr_accessor :height

    # Confidence score on a range of 0.0 - 1.0 of the accuracy of the detected license plate, with higher scores being better; values about 0.75 are high confidence
    attr_accessor :license_plate_recognition_confidence_level

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'license_plate_text_best_match' => :'LicensePlateText_BestMatch',
        :'license_plate_text_runner_up' => :'LicensePlateText_RunnerUp',
        :'location_x' => :'LocationX',
        :'location_y' => :'LocationY',
        :'width' => :'Width',
        :'height' => :'Height',
        :'license_plate_recognition_confidence_level' => :'LicensePlateRecognitionConfidenceLevel'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'license_plate_text_best_match' => :'String',
        :'license_plate_text_runner_up' => :'String',
        :'location_x' => :'Integer',
        :'location_y' => :'Integer',
        :'width' => :'Integer',
        :'height' => :'Integer',
        :'license_plate_recognition_confidence_level' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'LicensePlateText_BestMatch')
        self.license_plate_text_best_match = attributes[:'LicensePlateText_BestMatch']
      end

      if attributes.has_key?(:'LicensePlateText_RunnerUp')
        self.license_plate_text_runner_up = attributes[:'LicensePlateText_RunnerUp']
      end

      if attributes.has_key?(:'LocationX')
        self.location_x = attributes[:'LocationX']
      end

      if attributes.has_key?(:'LocationY')
        self.location_y = attributes[:'LocationY']
      end

      if attributes.has_key?(:'Width')
        self.width = attributes[:'Width']
      end

      if attributes.has_key?(:'Height')
        self.height = attributes[:'Height']
      end

      if attributes.has_key?(:'LicensePlateRecognitionConfidenceLevel')
        self.license_plate_recognition_confidence_level = attributes[:'LicensePlateRecognitionConfidenceLevel']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          license_plate_text_best_match == o.license_plate_text_best_match &&
          license_plate_text_runner_up == o.license_plate_text_runner_up &&
          location_x == o.location_x &&
          location_y == o.location_y &&
          width == o.width &&
          height == o.height &&
          license_plate_recognition_confidence_level == o.license_plate_recognition_confidence_level
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [license_plate_text_best_match, license_plate_text_runner_up, location_x, location_y, width, height, license_plate_recognition_confidence_level].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = CloudmersiveImageRecognitionApiClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
