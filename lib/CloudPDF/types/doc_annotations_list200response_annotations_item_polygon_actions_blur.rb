# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemPolygonActionsBlur < Internal::Types::Model
      field :root, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemPolygonActionsBlurRoot }, optional: false, nullable: true

      field :incomplete, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :warning_flags, -> { Integer }, optional: false, nullable: false, api_name: "warningFlags"

      field :warnings, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemPolygonActionsBlurWarningsItem] }, optional: false, nullable: false
    end
  end
end
