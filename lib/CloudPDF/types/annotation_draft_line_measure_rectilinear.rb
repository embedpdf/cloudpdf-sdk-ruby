# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationDraftLineMeasureRectilinear < Internal::Types::Model
      field :ratio, -> { String }, optional: true, nullable: false

      field :x, -> { Internal::Types::Array[CloudPDF::Types::AnnotationDraftLineMeasureRectilinearXItem] }, optional: false, nullable: false

      field :y, -> { Internal::Types::Array[CloudPDF::Types::AnnotationDraftLineMeasureRectilinearYItem] }, optional: true, nullable: false

      field :distance, -> { Internal::Types::Array[CloudPDF::Types::AnnotationDraftLineMeasureRectilinearDistanceItem] }, optional: false, nullable: false

      field :area, -> { Internal::Types::Array[CloudPDF::Types::AnnotationDraftLineMeasureRectilinearAreaItem] }, optional: false, nullable: false

      field :angle, -> { Internal::Types::Array[CloudPDF::Types::AnnotationDraftLineMeasureRectilinearAngleItem] }, optional: true, nullable: false

      field :slope, -> { Internal::Types::Array[CloudPDF::Types::AnnotationDraftLineMeasureRectilinearSlopeItem] }, optional: true, nullable: false

      field :origin, -> { CloudPDF::Types::AnnotationDraftLineMeasureRectilinearOrigin }, optional: true, nullable: false

      field :cyx, -> { Integer }, optional: true, nullable: false
    end
  end
end
