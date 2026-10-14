# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchPolylineMeasureRectilinear < Internal::Types::Model
      field :ratio, -> { String }, optional: true, nullable: false

      field :x, -> { Internal::Types::Array[CloudPDF::Types::AnnotationPatchPolylineMeasureRectilinearXItem] }, optional: false, nullable: false

      field :y, -> { Internal::Types::Array[CloudPDF::Types::AnnotationPatchPolylineMeasureRectilinearYItem] }, optional: true, nullable: false

      field :distance, -> { Internal::Types::Array[CloudPDF::Types::AnnotationPatchPolylineMeasureRectilinearDistanceItem] }, optional: false, nullable: false

      field :area, -> { Internal::Types::Array[CloudPDF::Types::AnnotationPatchPolylineMeasureRectilinearAreaItem] }, optional: false, nullable: false

      field :angle, -> { Internal::Types::Array[CloudPDF::Types::AnnotationPatchPolylineMeasureRectilinearAngleItem] }, optional: true, nullable: false

      field :slope, -> { Internal::Types::Array[CloudPDF::Types::AnnotationPatchPolylineMeasureRectilinearSlopeItem] }, optional: true, nullable: false

      field :origin, -> { CloudPDF::Types::AnnotationPatchPolylineMeasureRectilinearOrigin }, optional: true, nullable: false

      field :cyx, -> { Integer }, optional: true, nullable: false
    end
  end
end
