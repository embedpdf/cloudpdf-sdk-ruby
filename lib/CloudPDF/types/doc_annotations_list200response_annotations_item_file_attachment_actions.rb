# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemFileAttachmentActions < Internal::Types::Model
      field :activate, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemFileAttachmentActionsActivate }, optional: true, nullable: false

      field :cursor_enter, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemFileAttachmentActionsCursorEnter }, optional: true, nullable: false, api_name: "cursorEnter"

      field :cursor_exit, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemFileAttachmentActionsCursorExit }, optional: true, nullable: false, api_name: "cursorExit"

      field :mouse_down, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemFileAttachmentActionsMouseDown }, optional: true, nullable: false, api_name: "mouseDown"

      field :mouse_up, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemFileAttachmentActionsMouseUp }, optional: true, nullable: false, api_name: "mouseUp"

      field :focus, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemFileAttachmentActionsFocus }, optional: true, nullable: false

      field :blur, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemFileAttachmentActionsBlur }, optional: true, nullable: false

      field :page_open, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemFileAttachmentActionsPageOpen }, optional: true, nullable: false, api_name: "pageOpen"

      field :page_close, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemFileAttachmentActionsPageClose }, optional: true, nullable: false, api_name: "pageClose"

      field :page_visible, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemFileAttachmentActionsPageVisible }, optional: true, nullable: false, api_name: "pageVisible"

      field :page_invisible, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemFileAttachmentActionsPageInvisible }, optional: true, nullable: false, api_name: "pageInvisible"
    end
  end
end
