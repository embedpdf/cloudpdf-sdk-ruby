# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfAnnotationActions < Internal::Types::Model
      field :activate, -> { CloudPDF::Types::PdfActionTree }, optional: true, nullable: false

      field :cursor_enter, -> { CloudPDF::Types::PdfActionTree }, optional: true, nullable: false, api_name: "cursorEnter"

      field :cursor_exit, -> { CloudPDF::Types::PdfActionTree }, optional: true, nullable: false, api_name: "cursorExit"

      field :mouse_down, -> { CloudPDF::Types::PdfActionTree }, optional: true, nullable: false, api_name: "mouseDown"

      field :mouse_up, -> { CloudPDF::Types::PdfActionTree }, optional: true, nullable: false, api_name: "mouseUp"

      field :focus, -> { CloudPDF::Types::PdfActionTree }, optional: true, nullable: false

      field :blur, -> { CloudPDF::Types::PdfActionTree }, optional: true, nullable: false

      field :page_open, -> { CloudPDF::Types::PdfActionTree }, optional: true, nullable: false, api_name: "pageOpen"

      field :page_close, -> { CloudPDF::Types::PdfActionTree }, optional: true, nullable: false, api_name: "pageClose"

      field :page_visible, -> { CloudPDF::Types::PdfActionTree }, optional: true, nullable: false, api_name: "pageVisible"

      field :page_invisible, -> { CloudPDF::Types::PdfActionTree }, optional: true, nullable: false, api_name: "pageInvisible"
    end
  end
end
