# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsVisitorsListResponseVisitorsItemLayer < Internal::Types::Model
      field :layer_name, -> { String }, optional: false, nullable: false, api_name: "layerName"

      field :size_bytes, -> { Integer }, optional: false, nullable: true, api_name: "sizeBytes"
    end
  end
end
