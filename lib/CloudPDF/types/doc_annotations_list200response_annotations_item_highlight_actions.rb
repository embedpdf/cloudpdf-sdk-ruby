# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemHighlightActions < Internal::Types::Model
      field :activate, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightActionsActivate }, optional: true, nullable: false

      field :cursor_enter, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightActionsCursorEnter }, optional: true, nullable: false, api_name: "cursorEnter"

      field :cursor_exit, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightActionsCursorExit }, optional: true, nullable: false, api_name: "cursorExit"

      field :mouse_down, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightActionsMouseDown }, optional: true, nullable: false, api_name: "mouseDown"

      field :mouse_up, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightActionsMouseUp }, optional: true, nullable: false, api_name: "mouseUp"

      field :focus, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightActionsFocus }, optional: true, nullable: false

      field :blur, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightActionsBlur }, optional: true, nullable: false

      field :page_open, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightActionsPageOpen }, optional: true, nullable: false, api_name: "pageOpen"

      field :page_close, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightActionsPageClose }, optional: true, nullable: false, api_name: "pageClose"

      field :page_visible, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightActionsPageVisible }, optional: true, nullable: false, api_name: "pageVisible"

      field :page_invisible, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightActionsPageInvisible }, optional: true, nullable: false, api_name: "pageInvisible"
    end
  end
end
