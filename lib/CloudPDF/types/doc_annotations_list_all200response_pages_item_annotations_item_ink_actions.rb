# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemInkActions < Internal::Types::Model
      field :activate, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemInkActionsActivate }, optional: true, nullable: false

      field :cursor_enter, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemInkActionsCursorEnter }, optional: true, nullable: false, api_name: "cursorEnter"

      field :cursor_exit, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemInkActionsCursorExit }, optional: true, nullable: false, api_name: "cursorExit"

      field :mouse_down, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemInkActionsMouseDown }, optional: true, nullable: false, api_name: "mouseDown"

      field :mouse_up, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemInkActionsMouseUp }, optional: true, nullable: false, api_name: "mouseUp"

      field :focus, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemInkActionsFocus }, optional: true, nullable: false

      field :blur, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemInkActionsBlur }, optional: true, nullable: false

      field :page_open, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemInkActionsPageOpen }, optional: true, nullable: false, api_name: "pageOpen"

      field :page_close, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemInkActionsPageClose }, optional: true, nullable: false, api_name: "pageClose"

      field :page_visible, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemInkActionsPageVisible }, optional: true, nullable: false, api_name: "pageVisible"

      field :page_invisible, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemInkActionsPageInvisible }, optional: true, nullable: false, api_name: "pageInvisible"
    end
  end
end
