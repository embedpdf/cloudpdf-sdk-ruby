# frozen_string_literal: true

module CloudPDF
  module Types
    class DocVersionsList200ResponseVersionsItem < Internal::Types::Model
      field :sha256, -> { String }, optional: false, nullable: false

      field :byte_length, -> { Integer }, optional: false, nullable: false, api_name: "byteLength"

      field :number, -> { Integer }, optional: false, nullable: false

      field :parent_sha256, -> { String }, optional: false, nullable: true, api_name: "parentSha256"

      field :producer, -> { CloudPDF::Types::DocVersionsList200ResponseVersionsItemProducer }, optional: false, nullable: false

      field :signing_id, -> { String }, optional: false, nullable: true, api_name: "signingId"

      field :created_at, -> { Integer }, optional: false, nullable: false, api_name: "createdAt"
    end
  end
end
