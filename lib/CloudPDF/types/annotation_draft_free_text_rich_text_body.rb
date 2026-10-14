# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationDraftFreeTextRichTextBody < Internal::Types::Model
      field :family, -> { String }, optional: true, nullable: false

      field :weight, -> { Integer }, optional: true, nullable: false

      field :italic, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :size, -> { Integer }, optional: true, nullable: false

      field :color, -> { String }, optional: true, nullable: false

      field :decoration, -> { Internal::Types::Array[CloudPDF::Types::AnnotationDraftFreeTextRichTextBodyDecorationItem] }, optional: true, nullable: false

      field :script, -> { CloudPDF::Types::AnnotationDraftFreeTextRichTextBodyScript }, optional: true, nullable: false

      field :letter_spacing, -> { Integer }, optional: true, nullable: false, api_name: "letterSpacing"

      field :horizontal_scale, -> { Integer }, optional: true, nullable: false, api_name: "horizontalScale"

      field :unknown, -> { String }, optional: true, nullable: false

      field :align, -> { CloudPDF::Types::AnnotationDraftFreeTextRichTextBodyAlign }, optional: true, nullable: false

      field :dir, -> { CloudPDF::Types::AnnotationDraftFreeTextRichTextBodyDir }, optional: true, nullable: false

      field :line_height, -> { Integer }, optional: true, nullable: false, api_name: "lineHeight"

      field :margins, -> { CloudPDF::Types::AnnotationDraftFreeTextRichTextBodyMargins }, optional: true, nullable: false

      field :text_indent, -> { Integer }, optional: true, nullable: false, api_name: "textIndent"
    end
  end
end
