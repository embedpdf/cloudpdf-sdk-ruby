# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemLineMeasureRl < Internal::Types::Model
      field :ratio, -> { String }, optional: true, nullable: false

      field :x, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLineMeasureRlXItem] }, optional: false, nullable: false

      field :y, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLineMeasureRlYItem] }, optional: true, nullable: false

      field :distance, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLineMeasureRlDistanceItem] }, optional: false, nullable: false

      field :area, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLineMeasureRlAreaItem] }, optional: false, nullable: false

      field :angle, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLineMeasureRlAngleItem] }, optional: true, nullable: false

      field :slope, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLineMeasureRlSlopeItem] }, optional: true, nullable: false

      field :origin, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLineMeasureRlOrigin }, optional: true, nullable: false

      field :cyx, -> { Integer }, optional: true, nullable: false
    end
  end
end
