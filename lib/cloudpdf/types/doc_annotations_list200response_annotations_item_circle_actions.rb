# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemCircleActions < Internal::Types::Model
      field :activate, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemCircleActionsActivate }, optional: true, nullable: false

      field :cursor_enter, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemCircleActionsCursorEnter }, optional: true, nullable: false, api_name: "cursorEnter"

      field :cursor_exit, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemCircleActionsCursorExit }, optional: true, nullable: false, api_name: "cursorExit"

      field :mouse_down, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemCircleActionsMouseDown }, optional: true, nullable: false, api_name: "mouseDown"

      field :mouse_up, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemCircleActionsMouseUp }, optional: true, nullable: false, api_name: "mouseUp"

      field :focus, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemCircleActionsFocus }, optional: true, nullable: false

      field :blur, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemCircleActionsBlur }, optional: true, nullable: false

      field :page_open, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemCircleActionsPageOpen }, optional: true, nullable: false, api_name: "pageOpen"

      field :page_close, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemCircleActionsPageClose }, optional: true, nullable: false, api_name: "pageClose"

      field :page_visible, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemCircleActionsPageVisible }, optional: true, nullable: false, api_name: "pageVisible"

      field :page_invisible, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemCircleActionsPageInvisible }, optional: true, nullable: false, api_name: "pageInvisible"
    end
  end
end
