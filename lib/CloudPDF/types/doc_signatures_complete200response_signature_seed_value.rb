# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesComplete200ResponseSignatureSeedValue < Internal::Types::Model
      field :required_flags, -> { Integer }, optional: false, nullable: false, api_name: "requiredFlags"

      field :present_flags, -> { Integer }, optional: false, nullable: false, api_name: "presentFlags"

      field :version, -> { Integer }, optional: false, nullable: true

      field :mdp, -> { Integer }, optional: false, nullable: true

      field :filter, -> { String }, optional: false, nullable: true

      field :sub_filters, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "subFilters"

      field :digest_methods, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "digestMethods"

      field :reasons, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :unsupported_required, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "unsupportedRequired"
    end
  end
end
