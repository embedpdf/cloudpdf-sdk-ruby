# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemUnsupportedActions < Internal::Types::Model
      field :activate, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemUnsupportedActionsActivate }, optional: true, nullable: false

      field :cursor_enter, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemUnsupportedActionsCursorEnter }, optional: true, nullable: false, api_name: "cursorEnter"

      field :cursor_exit, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemUnsupportedActionsCursorExit }, optional: true, nullable: false, api_name: "cursorExit"

      field :mouse_down, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemUnsupportedActionsMouseDown }, optional: true, nullable: false, api_name: "mouseDown"

      field :mouse_up, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemUnsupportedActionsMouseUp }, optional: true, nullable: false, api_name: "mouseUp"

      field :focus, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemUnsupportedActionsFocus }, optional: true, nullable: false

      field :blur, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemUnsupportedActionsBlur }, optional: true, nullable: false

      field :page_open, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemUnsupportedActionsPageOpen }, optional: true, nullable: false, api_name: "pageOpen"

      field :page_close, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemUnsupportedActionsPageClose }, optional: true, nullable: false, api_name: "pageClose"

      field :page_visible, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemUnsupportedActionsPageVisible }, optional: true, nullable: false, api_name: "pageVisible"

      field :page_invisible, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemUnsupportedActionsPageInvisible }, optional: true, nullable: false, api_name: "pageInvisible"
    end
  end
end
