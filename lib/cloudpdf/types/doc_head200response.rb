# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocHead200Response < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :base_sha, -> { String }, optional: false, nullable: false, api_name: "baseSha"

      field :storage_size_bytes, -> { Integer }, optional: false, nullable: false, api_name: "storageSizeBytes"

      field :doc_version, -> { Integer }, optional: false, nullable: false, api_name: "docVersion"

      field :state, -> { Cloudpdf::Types::DocHead200ResponseState }, optional: false, nullable: false

      field :encryption, -> { Cloudpdf::Types::DocHead200ResponseEncryption }, optional: false, nullable: false

      field :permissions, -> { Cloudpdf::Types::DocHead200ResponsePermissions }, optional: false, nullable: false

      field :access, -> { Cloudpdf::Types::DocHead200ResponseAccess }, optional: false, nullable: false
    end
  end
end
