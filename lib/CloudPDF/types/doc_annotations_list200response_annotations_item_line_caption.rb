# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemLineCaption < Internal::Types::Model
      field :enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :position, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLineCaptionPosition }, optional: true, nullable: false

      field :offset, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLineCaptionOffset }, optional: true, nullable: false
    end
  end
end
