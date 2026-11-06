# frozen_string_literal: true

module CloudPDF
  module Types
    class DocVersionsSignaturesResponse < Internal::Types::Model
      field :chain_valid, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "chainValid"

      field :revisions, -> { Internal::Types::Array[CloudPDF::Types::DocVersionsSignaturesResponseRevisionsItem] }, optional: false, nullable: false

      field :signatures, -> { Internal::Types::Array[CloudPDF::Types::DocVersionsSignaturesResponseSignaturesItem] }, optional: false, nullable: false

      field :protection, -> { CloudPDF::Types::DocVersionsSignaturesResponseProtection }, optional: false, nullable: false
    end
  end
end
