# frozen_string_literal: true

module CloudPDF
  module Types
    class DocHead200Response < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :base_sha, -> { String }, optional: false, nullable: false, api_name: "baseSha"

      field :storage_size_bytes, -> { Integer }, optional: false, nullable: false, api_name: "storageSizeBytes"

      field :doc_version, -> { Integer }, optional: false, nullable: false, api_name: "docVersion"

      field :state, -> { CloudPDF::Types::DocHead200ResponseState }, optional: false, nullable: false

      field :encryption, -> { CloudPDF::Types::DocHead200ResponseEncryption }, optional: false, nullable: false

      field :permissions, -> { CloudPDF::Types::DocHead200ResponsePermissions }, optional: false, nullable: false

      field :access, -> { CloudPDF::Types::DocHead200ResponseAccess }, optional: false, nullable: false
    end
  end
end
