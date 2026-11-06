# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesCompleteResponseSignatureSeedValue < Internal::Types::Model
      field :parser_version, -> { Integer }, optional: false, nullable: true, api_name: "parserVersion"

      field :parser_version_required, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "parserVersionRequired"

      field :mdp, -> { Integer }, optional: false, nullable: true

      field :filter, -> { String }, optional: false, nullable: true

      field :filter_required, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "filterRequired"

      field :sub_filters, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "subFilters"

      field :sub_filters_required, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "subFiltersRequired"

      field :digest_methods, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "digestMethods"

      field :digest_methods_required, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "digestMethodsRequired"

      field :reasons, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :reasons_required, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "reasonsRequired"

      field :unsupported_required, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "unsupportedRequired"
    end
  end
end
