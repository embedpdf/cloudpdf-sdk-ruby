# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemWidgetActions < Internal::Types::Model
      field :activate, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemWidgetActionsActivate }, optional: true, nullable: false

      field :cursor_enter, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemWidgetActionsCursorEnter }, optional: true, nullable: false, api_name: "cursorEnter"

      field :cursor_exit, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemWidgetActionsCursorExit }, optional: true, nullable: false, api_name: "cursorExit"

      field :mouse_down, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemWidgetActionsMouseDown }, optional: true, nullable: false, api_name: "mouseDown"

      field :mouse_up, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemWidgetActionsMouseUp }, optional: true, nullable: false, api_name: "mouseUp"

      field :focus, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemWidgetActionsFocus }, optional: true, nullable: false

      field :blur, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemWidgetActionsBlur }, optional: true, nullable: false

      field :page_open, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemWidgetActionsPageOpen }, optional: true, nullable: false, api_name: "pageOpen"

      field :page_close, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemWidgetActionsPageClose }, optional: true, nullable: false, api_name: "pageClose"

      field :page_visible, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemWidgetActionsPageVisible }, optional: true, nullable: false, api_name: "pageVisible"

      field :page_invisible, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemWidgetActionsPageInvisible }, optional: true, nullable: false, api_name: "pageInvisible"
    end
  end
end
