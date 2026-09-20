# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemLineCaptionOffset < Internal::Types::Model
      field :along, -> { Integer }, optional: false, nullable: false

      field :perpendicular, -> { Integer }, optional: false, nullable: false
    end
  end
end
