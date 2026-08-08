# frozen_string_literal: true

module Cloudpdf
  module Doc
    module Annotations
      module Types
        class CreateAnnotationsRequest < Internal::Types::Model
          field :doc_id, -> { String }, optional: false, nullable: false, api_name: "docId"

          field :layer_name, -> { String }, optional: false, nullable: false, api_name: "layerName"

          field :pon, -> { Integer }, optional: false, nullable: false

          field :document_password, -> { String }, optional: true, nullable: false, api_name: "X-Document-Password"

          field :body, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false
        end
      end
    end
  end
end
