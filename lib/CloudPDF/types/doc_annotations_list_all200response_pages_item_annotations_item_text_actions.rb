# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemTextActions < Internal::Types::Model
      field :activate, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemTextActionsActivate }, optional: true, nullable: false

      field :cursor_enter, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemTextActionsCursorEnter }, optional: true, nullable: false, api_name: "cursorEnter"

      field :cursor_exit, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemTextActionsCursorExit }, optional: true, nullable: false, api_name: "cursorExit"

      field :mouse_down, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemTextActionsMouseDown }, optional: true, nullable: false, api_name: "mouseDown"

      field :mouse_up, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemTextActionsMouseUp }, optional: true, nullable: false, api_name: "mouseUp"

      field :focus, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemTextActionsFocus }, optional: true, nullable: false

      field :blur, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemTextActionsBlur }, optional: true, nullable: false

      field :page_open, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemTextActionsPageOpen }, optional: true, nullable: false, api_name: "pageOpen"

      field :page_close, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemTextActionsPageClose }, optional: true, nullable: false, api_name: "pageClose"

      field :page_visible, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemTextActionsPageVisible }, optional: true, nullable: false, api_name: "pageVisible"

      field :page_invisible, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemTextActionsPageInvisible }, optional: true, nullable: false, api_name: "pageInvisible"
    end
  end
end
