# frozen_string_literal: true

module CloudPDF
  module Types
    class DocManifestResponse < Internal::Types::Model
      field :doc_version, -> { Integer }, optional: false, nullable: false, api_name: "docVersion"

      field :layout_version, -> { Integer }, optional: false, nullable: false, api_name: "layoutVersion"

      field :metadata_version, -> { Integer }, optional: false, nullable: false, api_name: "metadataVersion"

      field :actions_version, -> { Integer }, optional: true, nullable: false, api_name: "actionsVersion"

      field :attachments_version, -> { Integer }, optional: true, nullable: false, api_name: "attachmentsVersion"

      field :annotations_version, -> { Integer }, optional: true, nullable: false, api_name: "annotationsVersion"

      field :forms_version, -> { Integer }, optional: true, nullable: false, api_name: "formsVersion"

      field :outline_version, -> { Integer }, optional: true, nullable: false, api_name: "outlineVersion"

      field :viewports_version, -> { Integer }, optional: true, nullable: false, api_name: "viewportsVersion"

      field :fonts_version, -> { Integer }, optional: true, nullable: false, api_name: "fontsVersion"

      field :contents_version, -> { Integer }, optional: true, nullable: false, api_name: "contentsVersion"

      field :audit_head, -> { Integer }, optional: false, nullable: false, api_name: "auditHead"

      field :base_sha256, -> { String }, optional: false, nullable: false, api_name: "baseSha256"

      field :layer_version, -> { Integer }, optional: true, nullable: false, api_name: "layerVersion"

      field :working, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :base_size_bytes, -> { Integer }, optional: true, nullable: false, api_name: "baseSizeBytes"

      field :scopes, -> { CloudPDF::Types::DocManifestResponseScopes }, optional: true, nullable: false

      field :protection, -> { CloudPDF::Types::DocManifestResponseProtection }, optional: false, nullable: true

      field :pages, -> { Internal::Types::Array[CloudPDF::Types::DocManifestResponsePagesItem] }, optional: false, nullable: false
    end
  end
end
