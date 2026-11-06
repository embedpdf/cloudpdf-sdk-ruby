# frozen_string_literal: true

module CloudPDF
  module Types
    class DocVersionsListResponseVersionsItem < Internal::Types::Model
      field :sha256, -> { String }, optional: false, nullable: false

      field :size_bytes, -> { Integer }, optional: false, nullable: false, api_name: "sizeBytes"

      field :number, -> { Integer }, optional: false, nullable: false

      field :parent_sha256, -> { String }, optional: false, nullable: true, api_name: "parentSha256"

      field :producer, -> { CloudPDF::Types::DocVersionsListResponseVersionsItemProducer }, optional: false, nullable: false

      field :signing_id, -> { String }, optional: false, nullable: true, api_name: "signingId"

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"
    end
  end
end
