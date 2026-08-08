# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocManifest200Response < Internal::Types::Model
      field :doc_version, -> { Integer }, optional: false, nullable: false, api_name: "docVersion"

      field :layout_version, -> { Integer }, optional: false, nullable: false, api_name: "layoutVersion"

      field :metadata_version, -> { Integer }, optional: false, nullable: false, api_name: "metadataVersion"

      field :actions_version, -> { Integer }, optional: true, nullable: false, api_name: "actionsVersion"

      field :attachments_version, -> { Integer }, optional: true, nullable: false, api_name: "attachmentsVersion"

      field :audit_head, -> { Integer }, optional: false, nullable: false, api_name: "auditHead"

      field :base_sha, -> { String }, optional: false, nullable: false, api_name: "baseSha"

      field :scopes, -> { Cloudpdf::Types::DocManifest200ResponseScopes }, optional: true, nullable: false

      field :pages, -> { Internal::Types::Array[Cloudpdf::Types::DocManifest200ResponsePagesItem] }, optional: false, nullable: false
    end
  end
end
