# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationLineMeasureRectilinear < Internal::Types::Model
      field :ratio, -> { String }, optional: true, nullable: false

      field :x, -> { Internal::Types::Array[CloudPDF::Types::AnnotationLineMeasureRectilinearXItem] }, optional: false, nullable: false

      field :y, -> { Internal::Types::Array[CloudPDF::Types::AnnotationLineMeasureRectilinearYItem] }, optional: true, nullable: false

      field :distance, -> { Internal::Types::Array[CloudPDF::Types::AnnotationLineMeasureRectilinearDistanceItem] }, optional: false, nullable: false

      field :area, -> { Internal::Types::Array[CloudPDF::Types::AnnotationLineMeasureRectilinearAreaItem] }, optional: false, nullable: false

      field :angle, -> { Internal::Types::Array[CloudPDF::Types::AnnotationLineMeasureRectilinearAngleItem] }, optional: true, nullable: false

      field :slope, -> { Internal::Types::Array[CloudPDF::Types::AnnotationLineMeasureRectilinearSlopeItem] }, optional: true, nullable: false

      field :origin, -> { CloudPDF::Types::AnnotationLineMeasureRectilinearOrigin }, optional: true, nullable: false

      field :cyx, -> { Integer }, optional: true, nullable: false
    end
  end
end
