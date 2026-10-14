# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchFreeTextRichTextParagraphsItem < Internal::Types::Model
      field :align, -> { CloudPDF::Types::AnnotationPatchFreeTextRichTextParagraphsItemAlign }, optional: true, nullable: false

      field :dir, -> { CloudPDF::Types::AnnotationPatchFreeTextRichTextParagraphsItemDir }, optional: true, nullable: false

      field :line_height, -> { Integer }, optional: true, nullable: false, api_name: "lineHeight"

      field :margins, -> { CloudPDF::Types::AnnotationPatchFreeTextRichTextParagraphsItemMargins }, optional: true, nullable: false

      field :text_indent, -> { Integer }, optional: true, nullable: false, api_name: "textIndent"

      field :unknown, -> { String }, optional: true, nullable: false

      field :runs, -> { Internal::Types::Array[CloudPDF::Types::AnnotationPatchFreeTextRichTextParagraphsItemRunsItem] }, optional: false, nullable: false
    end
  end
end
