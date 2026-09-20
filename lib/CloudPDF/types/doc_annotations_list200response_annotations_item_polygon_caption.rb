# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemPolygonCaption < Internal::Types::Model
      field :enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :center, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemPolygonCaptionCenter }, optional: true, nullable: false
    end
  end
end
