=begin
#imageapi

#Image Recognition and Processing APIs let you use Machine Learning to recognize and process images, and also perform useful image modification operations.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'date'

module CloudmersiveImageRecognitionApiClient
  # Location of one face in an image
  class FaceWithLandmarks
    # X coordinate of the left side of the face
    attr_accessor :left_x

    # Y coordinate of the top side of the face
    attr_accessor :top_y

    # X coordinate of the right side of the face
    attr_accessor :right_x

    # Y coordinate of the bottom side of the face
    attr_accessor :bottom_y

    # Point locations of the left eyebrow (the eyebrow cloesest to the left side of the picture)
    attr_accessor :left_eyebrow

    # Point locations of the right eyebrow (the eyebrow cloesest to the right side of the picture)
    attr_accessor :right_eyebrow

    # Point locations of the left eye (the eye closest to the left side of the picture)
    attr_accessor :left_eye

    # Point locations of the right eye (the eye closest to the right side of the picture)
    attr_accessor :right_eye

    # Point locations of the bottom and sides of the face (cheeks and chin)
    attr_accessor :bottom_and_sides_of_face

    # Point locations of the nose bridge (the vertical portion of the nose)
    attr_accessor :nose_bridge

    # Point locations of the bottom (nostrils) of the nose
    attr_accessor :nose_bottom

    # Point locations of the inner outline of the lips
    attr_accessor :lips_inner_outline

    # Point locations of the outer outline of the lips
    attr_accessor :lips_outer_outline

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'left_x' => :'LeftX',
        :'top_y' => :'TopY',
        :'right_x' => :'RightX',
        :'bottom_y' => :'BottomY',
        :'left_eyebrow' => :'LeftEyebrow',
        :'right_eyebrow' => :'RightEyebrow',
        :'left_eye' => :'LeftEye',
        :'right_eye' => :'RightEye',
        :'bottom_and_sides_of_face' => :'BottomAndSidesOfFace',
        :'nose_bridge' => :'NoseBridge',
        :'nose_bottom' => :'NoseBottom',
        :'lips_inner_outline' => :'LipsInnerOutline',
        :'lips_outer_outline' => :'LipsOuterOutline'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'left_x' => :'Integer',
        :'top_y' => :'Integer',
        :'right_x' => :'Integer',
        :'bottom_y' => :'Integer',
        :'left_eyebrow' => :'Array<FacePoint>',
        :'right_eyebrow' => :'Array<FacePoint>',
        :'left_eye' => :'Array<FacePoint>',
        :'right_eye' => :'Array<FacePoint>',
        :'bottom_and_sides_of_face' => :'Array<FacePoint>',
        :'nose_bridge' => :'Array<FacePoint>',
        :'nose_bottom' => :'Array<FacePoint>',
        :'lips_inner_outline' => :'Array<FacePoint>',
        :'lips_outer_outline' => :'Array<FacePoint>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'LeftX')
        self.left_x = attributes[:'LeftX']
      end

      if attributes.has_key?(:'TopY')
        self.top_y = attributes[:'TopY']
      end

      if attributes.has_key?(:'RightX')
        self.right_x = attributes[:'RightX']
      end

      if attributes.has_key?(:'BottomY')
        self.bottom_y = attributes[:'BottomY']
      end

      if attributes.has_key?(:'LeftEyebrow')
        if (value = attributes[:'LeftEyebrow']).is_a?(Array)
          self.left_eyebrow = value
        end
      end

      if attributes.has_key?(:'RightEyebrow')
        if (value = attributes[:'RightEyebrow']).is_a?(Array)
          self.right_eyebrow = value
        end
      end

      if attributes.has_key?(:'LeftEye')
        if (value = attributes[:'LeftEye']).is_a?(Array)
          self.left_eye = value
        end
      end

      if attributes.has_key?(:'RightEye')
        if (value = attributes[:'RightEye']).is_a?(Array)
          self.right_eye = value
        end
      end

      if attributes.has_key?(:'BottomAndSidesOfFace')
        if (value = attributes[:'BottomAndSidesOfFace']).is_a?(Array)
          self.bottom_and_sides_of_face = value
        end
      end

      if attributes.has_key?(:'NoseBridge')
        if (value = attributes[:'NoseBridge']).is_a?(Array)
          self.nose_bridge = value
        end
      end

      if attributes.has_key?(:'NoseBottom')
        if (value = attributes[:'NoseBottom']).is_a?(Array)
          self.nose_bottom = value
        end
      end

      if attributes.has_key?(:'LipsInnerOutline')
        if (value = attributes[:'LipsInnerOutline']).is_a?(Array)
          self.lips_inner_outline = value
        end
      end

      if attributes.has_key?(:'LipsOuterOutline')
        if (value = attributes[:'LipsOuterOutline']).is_a?(Array)
          self.lips_outer_outline = value
        end
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
          left_x == o.left_x &&
          top_y == o.top_y &&
          right_x == o.right_x &&
          bottom_y == o.bottom_y &&
          left_eyebrow == o.left_eyebrow &&
          right_eyebrow == o.right_eyebrow &&
          left_eye == o.left_eye &&
          right_eye == o.right_eye &&
          bottom_and_sides_of_face == o.bottom_and_sides_of_face &&
          nose_bridge == o.nose_bridge &&
          nose_bottom == o.nose_bottom &&
          lips_inner_outline == o.lips_inner_outline &&
          lips_outer_outline == o.lips_outer_outline
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [left_x, top_y, right_x, bottom_y, left_eyebrow, right_eyebrow, left_eye, right_eye, bottom_and_sides_of_face, nose_bridge, nose_bottom, lips_inner_outline, lips_outer_outline].hash
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
