# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchFreeTextRichTextBody < Internal::Types::Model
      field :family, -> { String }, optional: true, nullable: false

      field :weight, -> { Integer }, optional: true, nullable: false

      field :italic, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :size, -> { Integer }, optional: true, nullable: false

      field :color, -> { String }, optional: true, nullable: false

      field :decoration, -> { Internal::Types::Array[CloudPDF::Types::AnnotationPatchFreeTextRichTextBodyDecorationItem] }, optional: true, nullable: false

      field :script, -> { CloudPDF::Types::AnnotationPatchFreeTextRichTextBodyScript }, optional: true, nullable: false

      field :letter_spacing, -> { Integer }, optional: true, nullable: false, api_name: "letterSpacing"

      field :horizontal_scale, -> { Integer }, optional: true, nullable: false, api_name: "horizontalScale"

      field :unknown, -> { String }, optional: true, nullable: false

      field :align, -> { CloudPDF::Types::AnnotationPatchFreeTextRichTextBodyAlign }, optional: true, nullable: false

      field :dir, -> { CloudPDF::Types::AnnotationPatchFreeTextRichTextBodyDir }, optional: true, nullable: false

      field :line_height, -> { Integer }, optional: true, nullable: false, api_name: "lineHeight"

      field :margins, -> { CloudPDF::Types::AnnotationPatchFreeTextRichTextBodyMargins }, optional: true, nullable: false

      field :text_indent, -> { Integer }, optional: true, nullable: false, api_name: "textIndent"
    end
  end
end
