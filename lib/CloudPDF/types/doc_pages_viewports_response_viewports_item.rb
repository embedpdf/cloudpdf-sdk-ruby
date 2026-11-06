# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesViewportsResponseViewportsItem < Internal::Types::Model
      field :bbox, -> { CloudPDF::Types::DocPagesViewportsResponseViewportsItemBbox }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: true

      field :measure, -> { CloudPDF::Types::PdfMeasurement }, optional: false, nullable: true

      field :owned, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
