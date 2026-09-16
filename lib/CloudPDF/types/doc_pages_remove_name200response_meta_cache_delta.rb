# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesRemoveName200ResponseMetaCacheDelta < Internal::Types::Model
      field :previous_doc_version, -> { Integer }, optional: false, nullable: false, api_name: "previousDocVersion"

      field :doc_version, -> { Integer }, optional: false, nullable: false, api_name: "docVersion"

      field :annotations_version, -> { Integer }, optional: true, nullable: false, api_name: "annotationsVersion"

      field :layer_version, -> { Integer }, optional: true, nullable: false, api_name: "layerVersion"

      field :working, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :pages, -> { Internal::Types::Array[CloudPDF::Types::DocPagesRemoveName200ResponseMetaCacheDeltaPagesItem] }, optional: false, nullable: false
    end
  end
end
