# frozen_string_literal: true

module CloudPDF
  module Types
    class DocHeadResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :base_sha256, -> { String }, optional: false, nullable: false, api_name: "baseSha256"

      field :size_bytes, -> { Integer }, optional: false, nullable: false, api_name: "sizeBytes"

      field :doc_version, -> { Integer }, optional: false, nullable: false, api_name: "docVersion"

      field :state, -> { CloudPDF::Types::DocHeadResponseState }, optional: false, nullable: false

      field :encryption, -> { CloudPDF::Types::DocHeadResponseEncryption }, optional: false, nullable: false

      field :permissions, -> { CloudPDF::Types::DocHeadResponsePermissions }, optional: false, nullable: false

      field :access, -> { CloudPDF::Types::DocHeadResponseAccess }, optional: false, nullable: false

      field :engine, -> { Internal::Types::Hash[String, String] }, optional: false, nullable: false
    end
  end
end
