# frozen_string_literal: true

module CloudPDF
  module Doc
    module Types
      class DownloadDocRequest < Internal::Types::Model
        field :doc_id, -> { String }, optional: false, nullable: false, api_name: "docId"

        field :layer_name, -> { String }, optional: false, nullable: false, api_name: "layerName"

        field :document_password, -> { String }, optional: true, nullable: false, api_name: "X-Document-Password"
      end
    end
  end
end
