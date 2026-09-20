# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemPolylineCaption < Internal::Types::Model
      field :enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :center, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemPolylineCaptionCenter }, optional: true, nullable: false
    end
  end
end
