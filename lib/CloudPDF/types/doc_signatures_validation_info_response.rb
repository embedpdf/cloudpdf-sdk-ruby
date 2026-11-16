# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesValidationInfoResponse < Internal::Types::Model
      field :certificates, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :ocsp_responses, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "ocspResponses"

      field :crls, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
