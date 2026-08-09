# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemLinkActions < Internal::Types::Model
      field :activate, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLinkActionsActivate }, optional: true, nullable: false

      field :cursor_enter, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLinkActionsCursorEnter }, optional: true, nullable: false, api_name: "cursorEnter"

      field :cursor_exit, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLinkActionsCursorExit }, optional: true, nullable: false, api_name: "cursorExit"

      field :mouse_down, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLinkActionsMouseDown }, optional: true, nullable: false, api_name: "mouseDown"

      field :mouse_up, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLinkActionsMouseUp }, optional: true, nullable: false, api_name: "mouseUp"

      field :focus, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLinkActionsFocus }, optional: true, nullable: false

      field :blur, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLinkActionsBlur }, optional: true, nullable: false

      field :page_open, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLinkActionsPageOpen }, optional: true, nullable: false, api_name: "pageOpen"

      field :page_close, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLinkActionsPageClose }, optional: true, nullable: false, api_name: "pageClose"

      field :page_visible, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLinkActionsPageVisible }, optional: true, nullable: false, api_name: "pageVisible"

      field :page_invisible, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLinkActionsPageInvisible }, optional: true, nullable: false, api_name: "pageInvisible"
    end
  end
end
