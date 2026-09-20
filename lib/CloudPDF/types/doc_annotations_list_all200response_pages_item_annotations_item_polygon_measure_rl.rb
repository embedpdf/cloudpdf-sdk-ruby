# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolygonMeasureRl < Internal::Types::Model
      field :ratio, -> { String }, optional: true, nullable: false

      field :x, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolygonMeasureRlXItem] }, optional: false, nullable: false

      field :y, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolygonMeasureRlYItem] }, optional: true, nullable: false

      field :distance, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolygonMeasureRlDistanceItem] }, optional: false, nullable: false

      field :area, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolygonMeasureRlAreaItem] }, optional: false, nullable: false

      field :angle, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolygonMeasureRlAngleItem] }, optional: true, nullable: false

      field :slope, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolygonMeasureRlSlopeItem] }, optional: true, nullable: false

      field :origin, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolygonMeasureRlOrigin }, optional: true, nullable: false

      field :cyx, -> { Integer }, optional: true, nullable: false
    end
  end
end
