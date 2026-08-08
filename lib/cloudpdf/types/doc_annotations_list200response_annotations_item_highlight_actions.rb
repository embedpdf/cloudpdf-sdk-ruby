# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemHighlightActions < Internal::Types::Model
      field :activate, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightActionsActivate }, optional: true, nullable: false

      field :cursor_enter, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightActionsCursorEnter }, optional: true, nullable: false, api_name: "cursorEnter"

      field :cursor_exit, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightActionsCursorExit }, optional: true, nullable: false, api_name: "cursorExit"

      field :mouse_down, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightActionsMouseDown }, optional: true, nullable: false, api_name: "mouseDown"

      field :mouse_up, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightActionsMouseUp }, optional: true, nullable: false, api_name: "mouseUp"

      field :focus, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightActionsFocus }, optional: true, nullable: false

      field :blur, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightActionsBlur }, optional: true, nullable: false

      field :page_open, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightActionsPageOpen }, optional: true, nullable: false, api_name: "pageOpen"

      field :page_close, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightActionsPageClose }, optional: true, nullable: false, api_name: "pageClose"

      field :page_visible, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightActionsPageVisible }, optional: true, nullable: false, api_name: "pageVisible"

      field :page_invisible, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightActionsPageInvisible }, optional: true, nullable: false, api_name: "pageInvisible"
    end
  end
end
