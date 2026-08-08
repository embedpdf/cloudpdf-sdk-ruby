# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemWidgetActionsMouseUp < Internal::Types::Model
      field :root, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetActionsMouseUpRoot }, optional: false, nullable: true

      field :incomplete, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :warning_flags, -> { Integer }, optional: false, nullable: false, api_name: "warningFlags"

      field :warnings, -> { Internal::Types::Array[Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetActionsMouseUpWarningsItem] }, optional: false, nullable: false
    end
  end
end
