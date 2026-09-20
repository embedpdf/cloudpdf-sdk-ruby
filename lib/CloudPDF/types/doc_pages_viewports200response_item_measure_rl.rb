# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesViewports200ResponseItemMeasureRl < Internal::Types::Model
      field :ratio, -> { String }, optional: true, nullable: false

      field :x, -> { Internal::Types::Array[CloudPDF::Types::DocPagesViewports200ResponseItemMeasureRlXItem] }, optional: false, nullable: false

      field :y, -> { Internal::Types::Array[CloudPDF::Types::DocPagesViewports200ResponseItemMeasureRlYItem] }, optional: true, nullable: false

      field :distance, -> { Internal::Types::Array[CloudPDF::Types::DocPagesViewports200ResponseItemMeasureRlDistanceItem] }, optional: false, nullable: false

      field :area, -> { Internal::Types::Array[CloudPDF::Types::DocPagesViewports200ResponseItemMeasureRlAreaItem] }, optional: false, nullable: false

      field :angle, -> { Internal::Types::Array[CloudPDF::Types::DocPagesViewports200ResponseItemMeasureRlAngleItem] }, optional: true, nullable: false

      field :slope, -> { Internal::Types::Array[CloudPDF::Types::DocPagesViewports200ResponseItemMeasureRlSlopeItem] }, optional: true, nullable: false

      field :origin, -> { CloudPDF::Types::DocPagesViewports200ResponseItemMeasureRlOrigin }, optional: true, nullable: false

      field :cyx, -> { Integer }, optional: true, nullable: false
    end
  end
end
