# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemPagesSetScaleMeasure < Internal::Types::Model
      field :subtype, -> { CloudPDF::Types::ChangeItemPagesSetScaleMeasureSubtype }, optional: false, nullable: false

      field :ratio, -> { String }, optional: true, nullable: false

      field :x, -> { Internal::Types::Array[CloudPDF::Types::ChangeItemPagesSetScaleMeasureXItem] }, optional: false, nullable: false

      field :y, -> { Internal::Types::Array[CloudPDF::Types::ChangeItemPagesSetScaleMeasureYItem] }, optional: true, nullable: false

      field :distance, -> { Internal::Types::Array[CloudPDF::Types::ChangeItemPagesSetScaleMeasureDistanceItem] }, optional: false, nullable: false

      field :area, -> { Internal::Types::Array[CloudPDF::Types::ChangeItemPagesSetScaleMeasureAreaItem] }, optional: false, nullable: false

      field :angle, -> { Internal::Types::Array[CloudPDF::Types::ChangeItemPagesSetScaleMeasureAngleItem] }, optional: true, nullable: false

      field :slope, -> { Internal::Types::Array[CloudPDF::Types::ChangeItemPagesSetScaleMeasureSlopeItem] }, optional: true, nullable: false

      field :origin, -> { CloudPDF::Types::ChangeItemPagesSetScaleMeasureOrigin }, optional: true, nullable: false

      field :cyx, -> { Integer }, optional: true, nullable: false
    end
  end
end
