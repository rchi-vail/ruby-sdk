=begin
#FreeClimb API

#FreeClimb is a cloud-based application programming interface (API) that puts the power of the Vail platform in your hands. FreeClimb simplifies the process of creating applications that can use a full range of telephony features without requiring specialized or on-site telephony equipment. Using the FreeClimb REST API to write applications is easy! You have the option to use the language of your choice or hit the API directly. Your application can execute a command by issuing a RESTful request to the FreeClimb API. The base URL to send HTTP requests to the FreeClimb REST API is: /apiserver. FreeClimb authenticates and processes your request.

The version of the OpenAPI document: 1.0.0
Contact: support@freeclimb.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'date'
require 'time'

module Freeclimb
  class GetSpeechAllOf
    # When the caller has finished speaking or the command has timed out, FreeClimb will make a POST request to this URL. A PerCL response is expected to continue handling the call.
    attr_accessor :action_url

    # The grammar file type to use for speech recognition. A value of 'URL' indicates the grammarFile attribute specifies a URL that points to the grammar file. A value of `BUILTIN` indicates the grammarFile attribute specifies the name of one of the platform built-in grammar files.
    attr_accessor :grammar_type

    # The grammar file to use for speech recognition. If grammarType is set to URL, this attribute is specified as a download URL.
    attr_accessor :grammar_file

    # The grammar rule within the specified grammar file to use for speech recognition. This attribute is optional if `grammarType` is `URL` and ignored if `grammarType` is `BUILTIN`.
    attr_accessor :grammar_rule

    # Indicates whether a beep should be played just before speech recognition is initiated so that the speaker can start to speak.
    attr_accessor :play_beep

    # The JSON array of PerCL commands to nest within the `GetSpeech` command. The `Say`, `Play`, and `Pause` commands can be used. The nested actions are executed while FreeClimb is waiting for input from the caller. This allows for playing menu options to the caller and to prompt for the expected input. These commands stop executing when the caller begins to input speech.
    attr_accessor :prompts

    # When recognition is started and there is no speech detected for `noInputTimeoutMs` milliseconds, the recognizer will terminate the recognition operation.
    attr_accessor :no_input_timeout_ms

    # When playback of prompts ends and there is no match for `recognitionTimeoutMs` milliseconds, the recognizer will terminate the recognition operation.
    attr_accessor :recognition_timeout_ms

    # When a recognition resource recognizes a spoken phrase, it associates a confidence level with that match. Parameter `confidenceThreshold` specifies what confidence level is considered a successful match. Values are between 0.0 and 1.0.
    attr_accessor :confidence_threshold

    # The speech recognizer supports a variable level of sound sensitivity. The sensitivityLevel attribute allows for filtering out background noise, so it is not mistaken for speech. Values are between 0.0 and 1.0 
    attr_accessor :sensitivity_level

    # Parameter `speechCompleteTimeoutMs` specifies the length of silence required following user speech before the speech recognizer finalizes a result. This timeout applies when the recognizer currently has a complete match against an active grammar. Reasonable speech complete timeout values are typically in the range of 0.3 seconds to 1.0 seconds.
    attr_accessor :speech_complete_timeout_ms

    # Parameter `speechIncompleteTimeoutMs` specifies the length of silence following user speech after which a recognizer finalizes a result. This timeout applies when the speech prior to the silence is an incomplete match of all active grammars. Timeout `speechIncompleteTimeoutMs` is usually longer than `speechCompleteTimeoutMs` to allow users to pause mid-utterance.
    attr_accessor :speech_incomplete_timeout_ms

    # Parameter privacyMode will not log the `text` as required by PCI compliance.
    attr_accessor :privacy_mode

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'action_url' => :'actionUrl',
        :'grammar_type' => :'grammarType',
        :'grammar_file' => :'grammarFile',
        :'grammar_rule' => :'grammarRule',
        :'play_beep' => :'playBeep',
        :'prompts' => :'prompts',
        :'no_input_timeout_ms' => :'noInputTimeoutMs',
        :'recognition_timeout_ms' => :'recognitionTimeoutMs',
        :'confidence_threshold' => :'confidenceThreshold',
        :'sensitivity_level' => :'sensitivityLevel',
        :'speech_complete_timeout_ms' => :'speechCompleteTimeoutMs',
        :'speech_incomplete_timeout_ms' => :'speechIncompleteTimeoutMs',
        :'privacy_mode' => :'privacyMode'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'action_url' => :'String',
        :'grammar_type' => :'Integer',
        :'grammar_file' => :'String',
        :'grammar_rule' => :'Boolean',
        :'play_beep' => :'String',
        :'prompts' => :'Array<PerclCommand>',
        :'no_input_timeout_ms' => :'Integer',
        :'recognition_timeout_ms' => :'Integer',
        :'confidence_threshold' => :'Float',
        :'sensitivity_level' => :'Float',
        :'speech_complete_timeout_ms' => :'Integer',
        :'speech_incomplete_timeout_ms' => :'Integer',
        :'privacy_mode' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Freeclimb::GetSpeechAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Freeclimb::GetSpeechAllOf`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'action_url')
        self.action_url = attributes[:'action_url']
      end

      if attributes.key?(:'grammar_type')
        self.grammar_type = attributes[:'grammar_type']
      end

      if attributes.key?(:'grammar_file')
        self.grammar_file = attributes[:'grammar_file']
      end

      if attributes.key?(:'grammar_rule')
        self.grammar_rule = attributes[:'grammar_rule']
      end

      if attributes.key?(:'play_beep')
        self.play_beep = attributes[:'play_beep']
      end

      if attributes.key?(:'prompts')
        if (value = attributes[:'prompts']).is_a?(Array)
          self.prompts = value
        end
      end

      if attributes.key?(:'no_input_timeout_ms')
        self.no_input_timeout_ms = attributes[:'no_input_timeout_ms']
      end

      if attributes.key?(:'recognition_timeout_ms')
        self.recognition_timeout_ms = attributes[:'recognition_timeout_ms']
      end

      if attributes.key?(:'confidence_threshold')
        self.confidence_threshold = attributes[:'confidence_threshold']
      end

      if attributes.key?(:'sensitivity_level')
        self.sensitivity_level = attributes[:'sensitivity_level']
      end

      if attributes.key?(:'speech_complete_timeout_ms')
        self.speech_complete_timeout_ms = attributes[:'speech_complete_timeout_ms']
      end

      if attributes.key?(:'speech_incomplete_timeout_ms')
        self.speech_incomplete_timeout_ms = attributes[:'speech_incomplete_timeout_ms']
      end

      if attributes.key?(:'privacy_mode')
        self.privacy_mode = attributes[:'privacy_mode']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @action_url.nil?
        invalid_properties.push('invalid value for "action_url", action_url cannot be nil.')
      end

      if @grammar_file.nil?
        invalid_properties.push('invalid value for "grammar_file", grammar_file cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @action_url.nil?
      return false if @grammar_file.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          action_url == o.action_url &&
          grammar_type == o.grammar_type &&
          grammar_file == o.grammar_file &&
          grammar_rule == o.grammar_rule &&
          play_beep == o.play_beep &&
          prompts == o.prompts &&
          no_input_timeout_ms == o.no_input_timeout_ms &&
          recognition_timeout_ms == o.recognition_timeout_ms &&
          confidence_threshold == o.confidence_threshold &&
          sensitivity_level == o.sensitivity_level &&
          speech_complete_timeout_ms == o.speech_complete_timeout_ms &&
          speech_incomplete_timeout_ms == o.speech_incomplete_timeout_ms &&
          privacy_mode == o.privacy_mode
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [action_url, grammar_type, grammar_file, grammar_rule, play_beep, prompts, no_input_timeout_ms, recognition_timeout_ms, confidence_threshold, sensitivity_level, speech_complete_timeout_ms, speech_incomplete_timeout_ms, privacy_mode].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
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
        # models (e.g. Pet) or oneOf
        klass = Freeclimb.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
