# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemUnsupportedActions < Internal::Types::Model
      field :activate, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemUnsupportedActionsActivate }, optional: true, nullable: false

      field :cursor_enter, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemUnsupportedActionsCursorEnter }, optional: true, nullable: false, api_name: "cursorEnter"

      field :cursor_exit, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemUnsupportedActionsCursorExit }, optional: true, nullable: false, api_name: "cursorExit"

      field :mouse_down, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemUnsupportedActionsMouseDown }, optional: true, nullable: false, api_name: "mouseDown"

      field :mouse_up, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemUnsupportedActionsMouseUp }, optional: true, nullable: false, api_name: "mouseUp"

      field :focus, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemUnsupportedActionsFocus }, optional: true, nullable: false

      field :blur, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemUnsupportedActionsBlur }, optional: true, nullable: false

      field :page_open, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemUnsupportedActionsPageOpen }, optional: true, nullable: false, api_name: "pageOpen"

      field :page_close, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemUnsupportedActionsPageClose }, optional: true, nullable: false, api_name: "pageClose"

      field :page_visible, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemUnsupportedActionsPageVisible }, optional: true, nullable: false, api_name: "pageVisible"

      field :page_invisible, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemUnsupportedActionsPageInvisible }, optional: true, nullable: false, api_name: "pageInvisible"
    end
  end
end
