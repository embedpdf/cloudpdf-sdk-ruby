# frozen_string_literal: true

module CloudPDF
  module Documents
    module Layers
      module Types
        class DeleteLayersRequest < Internal::Types::Model
          field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

          field :doc_id, -> { String }, optional: false, nullable: false, api_name: "docId"

          field :layer_name, -> { String }, optional: false, nullable: false, api_name: "layerName"
        end
      end
    end
  end
end
