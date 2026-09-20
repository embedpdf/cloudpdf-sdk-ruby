# frozen_string_literal: true

module CloudPDF
  module Doc
    module Pages
      module Types
        class DocPagesSetScaleRequestMeasure < Internal::Types::Model
          field :subtype, -> { CloudPDF::Doc::Pages::Types::DocPagesSetScaleRequestMeasureSubtype }, optional: false, nullable: false

          field :ratio, -> { String }, optional: true, nullable: false

          field :x, -> { Internal::Types::Array[CloudPDF::Doc::Pages::Types::DocPagesSetScaleRequestMeasureXItem] }, optional: false, nullable: false

          field :y, -> { Internal::Types::Array[CloudPDF::Doc::Pages::Types::DocPagesSetScaleRequestMeasureYItem] }, optional: true, nullable: false

          field :distance, -> { Internal::Types::Array[CloudPDF::Doc::Pages::Types::DocPagesSetScaleRequestMeasureDistanceItem] }, optional: false, nullable: false

          field :area, -> { Internal::Types::Array[CloudPDF::Doc::Pages::Types::DocPagesSetScaleRequestMeasureAreaItem] }, optional: false, nullable: false

          field :angle, -> { Internal::Types::Array[CloudPDF::Doc::Pages::Types::DocPagesSetScaleRequestMeasureAngleItem] }, optional: true, nullable: false

          field :slope, -> { Internal::Types::Array[CloudPDF::Doc::Pages::Types::DocPagesSetScaleRequestMeasureSlopeItem] }, optional: true, nullable: false

          field :origin, -> { CloudPDF::Doc::Pages::Types::DocPagesSetScaleRequestMeasureOrigin }, optional: true, nullable: false

          field :cyx, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
