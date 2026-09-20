# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesViewports200ResponseItemMeasure < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :subtype

      member -> { CloudPDF::Types::DocPagesViewports200ResponseItemMeasureRl }, key: "RL"

      member -> { CloudPDF::Types::DocPagesViewports200ResponseItemMeasureGeo }, key: "GEO"

      member -> { CloudPDF::Types::DocPagesViewports200ResponseItemMeasureUnknown }, key: "UNKNOWN"
    end
  end
end
