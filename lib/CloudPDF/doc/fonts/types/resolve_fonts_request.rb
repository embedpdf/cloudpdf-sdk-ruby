# frozen_string_literal: true

module CloudPDF
  module Doc
    module Fonts
      module Types
        class ResolveFontsRequest < Internal::Types::Model
          field :doc_id, -> { String }, optional: false, nullable: false, api_name: "docId"

          field :layer_name, -> { String }, optional: false, nullable: false, api_name: "layerName"

          field :document_password, -> { String }, optional: true, nullable: false, api_name: "X-Document-Password"

          field :body, -> { CloudPDF::Types::FontResolveRequest }, optional: false, nullable: false
        end
      end
    end
  end
end
