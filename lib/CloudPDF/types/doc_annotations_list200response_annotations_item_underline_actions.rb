# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemUnderlineActions < Internal::Types::Model
      field :activate, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineActionsActivate }, optional: true, nullable: false

      field :cursor_enter, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineActionsCursorEnter }, optional: true, nullable: false, api_name: "cursorEnter"

      field :cursor_exit, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineActionsCursorExit }, optional: true, nullable: false, api_name: "cursorExit"

      field :mouse_down, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineActionsMouseDown }, optional: true, nullable: false, api_name: "mouseDown"

      field :mouse_up, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineActionsMouseUp }, optional: true, nullable: false, api_name: "mouseUp"

      field :focus, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineActionsFocus }, optional: true, nullable: false

      field :blur, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineActionsBlur }, optional: true, nullable: false

      field :page_open, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineActionsPageOpen }, optional: true, nullable: false, api_name: "pageOpen"

      field :page_close, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineActionsPageClose }, optional: true, nullable: false, api_name: "pageClose"

      field :page_visible, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineActionsPageVisible }, optional: true, nullable: false, api_name: "pageVisible"

      field :page_invisible, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineActionsPageInvisible }, optional: true, nullable: false, api_name: "pageInvisible"
    end
  end
end
