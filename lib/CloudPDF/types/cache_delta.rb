# frozen_string_literal: true

module CloudPDF
  module Types
    class CacheDelta < Internal::Types::Model
      field :previous_doc_version, -> { Integer }, optional: false, nullable: false, api_name: "previousDocVersion"

      field :doc_version, -> { Integer }, optional: false, nullable: false, api_name: "docVersion"

      field :annotations_version, -> { Integer }, optional: true, nullable: false, api_name: "annotationsVersion"

      field :forms_version, -> { Integer }, optional: true, nullable: false, api_name: "formsVersion"

      field :layout_version, -> { Integer }, optional: true, nullable: false, api_name: "layoutVersion"

      field :metadata_version, -> { Integer }, optional: true, nullable: false, api_name: "metadataVersion"

      field :attachments_version, -> { Integer }, optional: true, nullable: false, api_name: "attachmentsVersion"

      field :outline_version, -> { Integer }, optional: true, nullable: false, api_name: "outlineVersion"

      field :layer_version, -> { Integer }, optional: true, nullable: false, api_name: "layerVersion"

      field :working, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :pages, -> { Internal::Types::Array[CloudPDF::Types::CacheDeltaPagesItem] }, optional: false, nullable: false
    end
  end
end
