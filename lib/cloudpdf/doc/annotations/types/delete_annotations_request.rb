# frozen_string_literal: true

module Cloudpdf
  module Doc
    module Annotations
      module Types
        class DeleteAnnotationsRequest < Internal::Types::Model
          field :doc_id, -> { String }, optional: false, nullable: false, api_name: "docId"

          field :layer_name, -> { String }, optional: false, nullable: false, api_name: "layerName"

          field :pon, -> { Integer }, optional: false, nullable: false

          field :annot_key, -> { String }, optional: false, nullable: false, api_name: "annotKey"

          field :document_password, -> { String }, optional: true, nullable: false, api_name: "X-Document-Password"
        end
      end
    end
  end
end
