# frozen_string_literal: true

module CloudPDF
  module Documents
    module Layers
      module Types
        class DeleteLayersRequest < Internal::Types::Model
          field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

          field :id, -> { String }, optional: false, nullable: false

          field :layer_name, -> { String }, optional: false, nullable: false, api_name: "layerName"
        end
      end
    end
  end
end
