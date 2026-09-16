# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesPrepare200Response < Internal::Types::Model
      field :signing_id, -> { String }, optional: false, nullable: false, api_name: "signingId"

      field :digest, -> { String }, optional: false, nullable: false

      field :algorithm, -> { CloudPDF::Types::DocSignaturesPrepare200ResponseAlgorithm }, optional: false, nullable: false

      field :byte_range, -> { Internal::Types::Array[Object] }, optional: false, nullable: false, api_name: "byteRange"

      field :contents_size, -> { Integer }, optional: false, nullable: false, api_name: "contentsSize"

      field :sub_filter, -> { String }, optional: false, nullable: false, api_name: "subFilter"

      field :expected_version, -> { CloudPDF::Types::DocSignaturesPrepare200ResponseExpectedVersion }, optional: false, nullable: false, api_name: "expectedVersion"

      field :expires_at, -> { String }, optional: false, nullable: true, api_name: "expiresAt"
    end
  end
end
