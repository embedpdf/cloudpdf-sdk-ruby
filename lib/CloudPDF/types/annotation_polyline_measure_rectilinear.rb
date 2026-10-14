# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPolylineMeasureRectilinear < Internal::Types::Model
      field :ratio, -> { String }, optional: true, nullable: false

      field :x, -> { Internal::Types::Array[CloudPDF::Types::AnnotationPolylineMeasureRectilinearXItem] }, optional: false, nullable: false

      field :y, -> { Internal::Types::Array[CloudPDF::Types::AnnotationPolylineMeasureRectilinearYItem] }, optional: true, nullable: false

      field :distance, -> { Internal::Types::Array[CloudPDF::Types::AnnotationPolylineMeasureRectilinearDistanceItem] }, optional: false, nullable: false

      field :area, -> { Internal::Types::Array[CloudPDF::Types::AnnotationPolylineMeasureRectilinearAreaItem] }, optional: false, nullable: false

      field :angle, -> { Internal::Types::Array[CloudPDF::Types::AnnotationPolylineMeasureRectilinearAngleItem] }, optional: true, nullable: false

      field :slope, -> { Internal::Types::Array[CloudPDF::Types::AnnotationPolylineMeasureRectilinearSlopeItem] }, optional: true, nullable: false

      field :origin, -> { CloudPDF::Types::AnnotationPolylineMeasureRectilinearOrigin }, optional: true, nullable: false

      field :cyx, -> { Integer }, optional: true, nullable: false
    end
  end
end
