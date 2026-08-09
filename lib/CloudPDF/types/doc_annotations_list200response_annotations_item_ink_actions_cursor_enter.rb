# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemInkActionsCursorEnter < Internal::Types::Model
      field :root, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemInkActionsCursorEnterRoot }, optional: false, nullable: true

      field :incomplete, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :warning_flags, -> { Integer }, optional: false, nullable: false, api_name: "warningFlags"

      field :warnings, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemInkActionsCursorEnterWarningsItem] }, optional: false, nullable: false
    end
  end
end
