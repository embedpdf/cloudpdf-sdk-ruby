# frozen_string_literal: true

module CloudPDF
  module Types
    class DocManifest200Response < Internal::Types::Model
      field :doc_version, -> { Integer }, optional: false, nullable: false, api_name: "docVersion"

      field :layout_version, -> { Integer }, optional: false, nullable: false, api_name: "layoutVersion"

      field :metadata_version, -> { Integer }, optional: false, nullable: false, api_name: "metadataVersion"

      field :actions_version, -> { Integer }, optional: true, nullable: false, api_name: "actionsVersion"

      field :attachments_version, -> { Integer }, optional: true, nullable: false, api_name: "attachmentsVersion"

      field :annotations_version, -> { Integer }, optional: true, nullable: false, api_name: "annotationsVersion"

      field :audit_head, -> { Integer }, optional: false, nullable: false, api_name: "auditHead"

      field :base_sha, -> { String }, optional: false, nullable: false, api_name: "baseSha"

      field :layer_version, -> { Integer }, optional: true, nullable: false, api_name: "layerVersion"

      field :working, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :base_byte_length, -> { Integer }, optional: true, nullable: false, api_name: "baseByteLength"

      field :scopes, -> { CloudPDF::Types::DocManifest200ResponseScopes }, optional: true, nullable: false

      field :pages, -> { Internal::Types::Array[CloudPDF::Types::DocManifest200ResponsePagesItem] }, optional: false, nullable: false
    end
  end
end
