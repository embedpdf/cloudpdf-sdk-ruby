# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationFreeText < Internal::Types::Model
      field :ref, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :has_appearance, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "hasAppearance"

      field :appearance_state, -> { String }, optional: false, nullable: true, api_name: "appearanceState"

      field :nm, -> { String }, optional: false, nullable: true

      field :rect, -> { CloudPDF::Types::AnnotationFreeTextRect }, optional: false, nullable: false

      field :contents, -> { String }, optional: false, nullable: true

      field :subject, -> { String }, optional: false, nullable: true

      field :blend_mode, -> { CloudPDF::Types::AnnotationFreeTextBlendMode }, optional: false, nullable: false, api_name: "blendMode"

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

      field :reply, -> { CloudPDF::Types::AnnotationFreeTextReply }, optional: false, nullable: true

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

      field :box, -> { CloudPDF::Types::AnnotationFreeTextBox }, optional: false, nullable: false

      field :rotation, -> { Integer }, optional: false, nullable: true

      field :intent, -> { CloudPDF::Types::AnnotationFreeTextIntent }, optional: false, nullable: false

      field :font_family, -> { String }, optional: false, nullable: false, api_name: "fontFamily"

      field :font_size, -> { Integer }, optional: false, nullable: false, api_name: "fontSize"

      field :text_align, -> { CloudPDF::Types::AnnotationFreeTextTextAlign }, optional: false, nullable: false, api_name: "textAlign"

      field :vertical_align, -> { CloudPDF::Types::AnnotationFreeTextVerticalAlign }, optional: false, nullable: false, api_name: "verticalAlign"

      field :rich_text, -> { CloudPDF::Types::AnnotationFreeTextRichText }, optional: false, nullable: false, api_name: "richText"

      field :color, -> { String }, optional: false, nullable: false

      field :font_color, -> { String }, optional: false, nullable: false, api_name: "fontColor"

      field :interior_color, -> { String }, optional: false, nullable: true, api_name: "interiorColor"

      field :opacity, -> { Integer }, optional: false, nullable: false

      field :stroke_width, -> { Integer }, optional: false, nullable: false, api_name: "strokeWidth"

      field :border_style, -> { CloudPDF::Types::AnnotationFreeTextBorderStyle }, optional: false, nullable: false, api_name: "borderStyle"

      field :dash_array, -> { Internal::Types::Array[Integer] }, optional: false, nullable: true, api_name: "dashArray"

      field :cloudy_intensity, -> { Integer }, optional: false, nullable: true, api_name: "cloudyIntensity"

      field :callout_line, -> { Internal::Types::Array[Object] }, optional: false, nullable: true, api_name: "calloutLine"

      field :line_ending, -> { CloudPDF::Types::AnnotationFreeTextLineEnding }, optional: false, nullable: true, api_name: "lineEnding"
    end
  end
end
