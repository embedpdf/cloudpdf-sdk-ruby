# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpPagesSetScaleMeasure < Internal::Types::Model
      field :subtype, -> { CloudPDF::Types::ChangeOpPagesSetScaleMeasureSubtype }, optional: false, nullable: false

      field :ratio, -> { String }, optional: true, nullable: false

      field :x, -> { Internal::Types::Array[CloudPDF::Types::ChangeOpPagesSetScaleMeasureXItem] }, optional: false, nullable: false

      field :y, -> { Internal::Types::Array[CloudPDF::Types::ChangeOpPagesSetScaleMeasureYItem] }, optional: true, nullable: false

      field :distance, -> { Internal::Types::Array[CloudPDF::Types::ChangeOpPagesSetScaleMeasureDistanceItem] }, optional: false, nullable: false

      field :area, -> { Internal::Types::Array[CloudPDF::Types::ChangeOpPagesSetScaleMeasureAreaItem] }, optional: false, nullable: false

      field :angle, -> { Internal::Types::Array[CloudPDF::Types::ChangeOpPagesSetScaleMeasureAngleItem] }, optional: true, nullable: false

      field :slope, -> { Internal::Types::Array[CloudPDF::Types::ChangeOpPagesSetScaleMeasureSlopeItem] }, optional: true, nullable: false

      field :origin, -> { CloudPDF::Types::ChangeOpPagesSetScaleMeasureOrigin }, optional: true, nullable: false

      field :cyx, -> { Integer }, optional: true, nullable: false
    end
  end
end
