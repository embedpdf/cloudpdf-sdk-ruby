# frozen_string_literal: true

module CloudPDF
  module Types
    class WidgetActionsPatch < Internal::Types::Model
      field :activate, -> { CloudPDF::Types::PdfActionWrite }, optional: true, nullable: false

      field :cursor_enter, -> { CloudPDF::Types::PdfActionWrite }, optional: true, nullable: false, api_name: "cursorEnter"

      field :cursor_exit, -> { CloudPDF::Types::PdfActionWrite }, optional: true, nullable: false, api_name: "cursorExit"

      field :mouse_down, -> { CloudPDF::Types::PdfActionWrite }, optional: true, nullable: false, api_name: "mouseDown"

      field :mouse_up, -> { CloudPDF::Types::PdfActionWrite }, optional: true, nullable: false, api_name: "mouseUp"

      field :focus, -> { CloudPDF::Types::PdfActionWrite }, optional: true, nullable: false

      field :blur, -> { CloudPDF::Types::PdfActionWrite }, optional: true, nullable: false

      field :page_open, -> { CloudPDF::Types::PdfActionWrite }, optional: true, nullable: false, api_name: "pageOpen"

      field :page_close, -> { CloudPDF::Types::PdfActionWrite }, optional: true, nullable: false, api_name: "pageClose"

      field :page_visible, -> { CloudPDF::Types::PdfActionWrite }, optional: true, nullable: false, api_name: "pageVisible"

      field :page_invisible, -> { CloudPDF::Types::PdfActionWrite }, optional: true, nullable: false, api_name: "pageInvisible"
    end
  end
end
