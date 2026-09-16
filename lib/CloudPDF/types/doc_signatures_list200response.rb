# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesList200Response < Internal::Types::Model
      field :chain_valid, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "chainValid"

      field :revisions, -> { Internal::Types::Array[CloudPDF::Types::DocSignaturesList200ResponseRevisionsItem] }, optional: false, nullable: false

      field :signatures, -> { Internal::Types::Array[CloudPDF::Types::DocSignaturesList200ResponseSignaturesItem] }, optional: false, nullable: false

      field :protection, -> { CloudPDF::Types::DocSignaturesList200ResponseProtection }, optional: false, nullable: false
    end
  end
end
