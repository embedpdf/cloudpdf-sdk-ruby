# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemInkActions < Internal::Types::Model
      field :activate, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemInkActionsActivate }, optional: true, nullable: false

      field :cursor_enter, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemInkActionsCursorEnter }, optional: true, nullable: false, api_name: "cursorEnter"

      field :cursor_exit, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemInkActionsCursorExit }, optional: true, nullable: false, api_name: "cursorExit"

      field :mouse_down, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemInkActionsMouseDown }, optional: true, nullable: false, api_name: "mouseDown"

      field :mouse_up, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemInkActionsMouseUp }, optional: true, nullable: false, api_name: "mouseUp"

      field :focus, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemInkActionsFocus }, optional: true, nullable: false

      field :blur, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemInkActionsBlur }, optional: true, nullable: false

      field :page_open, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemInkActionsPageOpen }, optional: true, nullable: false, api_name: "pageOpen"

      field :page_close, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemInkActionsPageClose }, optional: true, nullable: false, api_name: "pageClose"

      field :page_visible, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemInkActionsPageVisible }, optional: true, nullable: false, api_name: "pageVisible"

      field :page_invisible, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemInkActionsPageInvisible }, optional: true, nullable: false, api_name: "pageInvisible"
    end
  end
end
