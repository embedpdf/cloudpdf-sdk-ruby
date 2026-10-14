# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchPolygonMeasureRectilinear < Internal::Types::Model
      field :ratio, -> { String }, optional: true, nullable: false

      field :x, -> { Internal::Types::Array[CloudPDF::Types::AnnotationPatchPolygonMeasureRectilinearXItem] }, optional: false, nullable: false

      field :y, -> { Internal::Types::Array[CloudPDF::Types::AnnotationPatchPolygonMeasureRectilinearYItem] }, optional: true, nullable: false

      field :distance, -> { Internal::Types::Array[CloudPDF::Types::AnnotationPatchPolygonMeasureRectilinearDistanceItem] }, optional: false, nullable: false

      field :area, -> { Internal::Types::Array[CloudPDF::Types::AnnotationPatchPolygonMeasureRectilinearAreaItem] }, optional: false, nullable: false

      field :angle, -> { Internal::Types::Array[CloudPDF::Types::AnnotationPatchPolygonMeasureRectilinearAngleItem] }, optional: true, nullable: false

      field :slope, -> { Internal::Types::Array[CloudPDF::Types::AnnotationPatchPolygonMeasureRectilinearSlopeItem] }, optional: true, nullable: false

      field :origin, -> { CloudPDF::Types::AnnotationPatchPolygonMeasureRectilinearOrigin }, optional: true, nullable: false

      field :cyx, -> { Integer }, optional: true, nullable: false
    end
  end
end
