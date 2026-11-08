# frozen_string_literal: true

module CloudPDF
  module Types
    class PageMeasurementViewport < Internal::Types::Model
      field :bbox, -> { CloudPDF::Types::PageMeasurementViewportBbox }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: true

      field :measure, -> { CloudPDF::Types::PdfMeasurement }, optional: false, nullable: true

      field :owned, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
