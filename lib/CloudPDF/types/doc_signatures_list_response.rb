# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesListResponse < Internal::Types::Model
      field :chain_valid, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "chainValid"

      field :revisions, -> { Internal::Types::Array[CloudPDF::Types::DocSignaturesListResponseRevisionsItem] }, optional: false, nullable: false

      field :signatures, -> { Internal::Types::Array[CloudPDF::Types::DocSignaturesListResponseSignaturesItem] }, optional: false, nullable: false

      field :protection, -> { CloudPDF::Types::DocSignaturesListResponseProtection }, optional: false, nullable: false
    end
  end
end
