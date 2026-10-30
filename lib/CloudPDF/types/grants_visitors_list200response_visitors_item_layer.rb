# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsVisitorsList200ResponseVisitorsItemLayer < Internal::Types::Model
      field :layer_name, -> { String }, optional: false, nullable: false, api_name: "layerName"

      field :storage_size_bytes, -> { Integer }, optional: false, nullable: true, api_name: "storageSizeBytes"
    end
  end
end
