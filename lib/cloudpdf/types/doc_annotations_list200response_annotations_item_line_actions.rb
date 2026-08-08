# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemLineActions < Internal::Types::Model
      field :activate, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLineActionsActivate }, optional: true, nullable: false

      field :cursor_enter, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLineActionsCursorEnter }, optional: true, nullable: false, api_name: "cursorEnter"

      field :cursor_exit, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLineActionsCursorExit }, optional: true, nullable: false, api_name: "cursorExit"

      field :mouse_down, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLineActionsMouseDown }, optional: true, nullable: false, api_name: "mouseDown"

      field :mouse_up, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLineActionsMouseUp }, optional: true, nullable: false, api_name: "mouseUp"

      field :focus, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLineActionsFocus }, optional: true, nullable: false

      field :blur, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLineActionsBlur }, optional: true, nullable: false

      field :page_open, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLineActionsPageOpen }, optional: true, nullable: false, api_name: "pageOpen"

      field :page_close, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLineActionsPageClose }, optional: true, nullable: false, api_name: "pageClose"

      field :page_visible, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLineActionsPageVisible }, optional: true, nullable: false, api_name: "pageVisible"

      field :page_invisible, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLineActionsPageInvisible }, optional: true, nullable: false, api_name: "pageInvisible"
    end
  end
end
