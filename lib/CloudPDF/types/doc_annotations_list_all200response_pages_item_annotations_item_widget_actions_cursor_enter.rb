# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemWidgetActionsCursorEnter < Internal::Types::Model
      field :root, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemWidgetActionsCursorEnterRoot }, optional: false, nullable: true

      field :incomplete, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :warning_flags, -> { Integer }, optional: false, nullable: false, api_name: "warningFlags"

      field :warnings, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemWidgetActionsCursorEnterWarningsItem] }, optional: false, nullable: false
    end
  end
end
