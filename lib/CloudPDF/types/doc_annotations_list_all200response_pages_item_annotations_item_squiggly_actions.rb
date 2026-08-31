# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemSquigglyActions < Internal::Types::Model
      field :activate, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemSquigglyActionsActivate }, optional: true, nullable: false

      field :cursor_enter, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemSquigglyActionsCursorEnter }, optional: true, nullable: false, api_name: "cursorEnter"

      field :cursor_exit, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemSquigglyActionsCursorExit }, optional: true, nullable: false, api_name: "cursorExit"

      field :mouse_down, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemSquigglyActionsMouseDown }, optional: true, nullable: false, api_name: "mouseDown"

      field :mouse_up, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemSquigglyActionsMouseUp }, optional: true, nullable: false, api_name: "mouseUp"

      field :focus, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemSquigglyActionsFocus }, optional: true, nullable: false

      field :blur, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemSquigglyActionsBlur }, optional: true, nullable: false

      field :page_open, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemSquigglyActionsPageOpen }, optional: true, nullable: false, api_name: "pageOpen"

      field :page_close, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemSquigglyActionsPageClose }, optional: true, nullable: false, api_name: "pageClose"

      field :page_visible, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemSquigglyActionsPageVisible }, optional: true, nullable: false, api_name: "pageVisible"

      field :page_invisible, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemSquigglyActionsPageInvisible }, optional: true, nullable: false, api_name: "pageInvisible"
    end
  end
end
