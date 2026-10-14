# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationLine < Internal::Types::Model
      field :ref, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :has_appearance, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "hasAppearance"

      field :appearance_state, -> { String }, optional: false, nullable: true, api_name: "appearanceState"

      field :nm, -> { String }, optional: false, nullable: true

      field :rect, -> { CloudPDF::Types::AnnotationLineRect }, optional: false, nullable: false

      field :contents, -> { String }, optional: false, nullable: true

      field :subject, -> { String }, optional: false, nullable: true

      field :blend_mode, -> { CloudPDF::Types::AnnotationLineBlendMode }, optional: false, nullable: false, api_name: "blendMode"

      field :invisible, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :hidden, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :print, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :no_zoom, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "noZoom"

      field :no_rotate, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "noRotate"

      field :no_view, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "noView"

      field :read_only, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "readOnly"

      field :locked, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :toggle_no_view, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "toggleNoView"

      field :locked_contents, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "lockedContents"

      field :reply, -> { CloudPDF::Types::AnnotationLineReply }, optional: false, nullable: true

      field :popup, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: true

      field :group_id, -> { String }, optional: false, nullable: true, api_name: "groupId"

      field :author, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: true, api_name: "createdAt"

      field :modified_at, -> { String }, optional: false, nullable: true, api_name: "modifiedAt"

      field :user_id, -> { String }, optional: false, nullable: true, api_name: "userId"

      field :created_by, -> { String }, optional: false, nullable: true, api_name: "createdBy"

      field :modified_by, -> { String }, optional: false, nullable: true, api_name: "modifiedBy"

      field :imported_by, -> { String }, optional: false, nullable: true, api_name: "importedBy"

      field :actions, -> { CloudPDF::Types::PdfAnnotationActions }, optional: false, nullable: true

      field :color, -> { String }, optional: false, nullable: false

      field :opacity, -> { Integer }, optional: false, nullable: false

      field :stroke_width, -> { Integer }, optional: false, nullable: false, api_name: "strokeWidth"

      field :border_style, -> { CloudPDF::Types::AnnotationLineBorderStyle }, optional: false, nullable: false, api_name: "borderStyle"

      field :dash_array, -> { Internal::Types::Array[Integer] }, optional: false, nullable: true, api_name: "dashArray"

      field :interior_color, -> { String }, optional: false, nullable: true, api_name: "interiorColor"

      field :line_points, -> { CloudPDF::Types::AnnotationLineLinePoints }, optional: false, nullable: false, api_name: "linePoints"

      field :line_endings, -> { CloudPDF::Types::AnnotationLineLineEndings }, optional: false, nullable: false, api_name: "lineEndings"

      field :rotation, -> { Integer }, optional: false, nullable: true

      field :intent, -> { CloudPDF::Types::AnnotationLineIntent }, optional: false, nullable: true

      field :measure, -> { CloudPDF::Types::AnnotationLineMeasure }, optional: false, nullable: true

      field :caption_enabled, -> { Internal::Types::Boolean }, optional: false, nullable: true, api_name: "captionEnabled"

      field :caption_position, -> { CloudPDF::Types::AnnotationLineCaptionPosition }, optional: false, nullable: false, api_name: "captionPosition"

      field :caption_offset, -> { CloudPDF::Types::AnnotationLineCaptionOffset }, optional: false, nullable: true, api_name: "captionOffset"

      field :leader, -> { CloudPDF::Types::AnnotationLineLeader }, optional: false, nullable: true
    end
  end
end
