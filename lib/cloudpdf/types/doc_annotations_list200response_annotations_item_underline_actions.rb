# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemUnderlineActions < Internal::Types::Model
      field :activate, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineActionsActivate }, optional: true, nullable: false

      field :cursor_enter, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineActionsCursorEnter }, optional: true, nullable: false, api_name: "cursorEnter"

      field :cursor_exit, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineActionsCursorExit }, optional: true, nullable: false, api_name: "cursorExit"

      field :mouse_down, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineActionsMouseDown }, optional: true, nullable: false, api_name: "mouseDown"

      field :mouse_up, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineActionsMouseUp }, optional: true, nullable: false, api_name: "mouseUp"

      field :focus, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineActionsFocus }, optional: true, nullable: false

      field :blur, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineActionsBlur }, optional: true, nullable: false

      field :page_open, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineActionsPageOpen }, optional: true, nullable: false, api_name: "pageOpen"

      field :page_close, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineActionsPageClose }, optional: true, nullable: false, api_name: "pageClose"

      field :page_visible, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineActionsPageVisible }, optional: true, nullable: false, api_name: "pageVisible"

      field :page_invisible, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineActionsPageInvisible }, optional: true, nullable: false, api_name: "pageInvisible"
    end
  end
end
