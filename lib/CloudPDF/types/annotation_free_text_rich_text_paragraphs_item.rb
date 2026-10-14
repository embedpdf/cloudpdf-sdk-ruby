# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationFreeTextRichTextParagraphsItem < Internal::Types::Model
      field :align, -> { CloudPDF::Types::AnnotationFreeTextRichTextParagraphsItemAlign }, optional: true, nullable: false

      field :dir, -> { CloudPDF::Types::AnnotationFreeTextRichTextParagraphsItemDir }, optional: true, nullable: false

      field :line_height, -> { Integer }, optional: true, nullable: false, api_name: "lineHeight"

      field :margins, -> { CloudPDF::Types::AnnotationFreeTextRichTextParagraphsItemMargins }, optional: true, nullable: false

      field :text_indent, -> { Integer }, optional: true, nullable: false, api_name: "textIndent"

      field :unknown, -> { String }, optional: true, nullable: false

      field :runs, -> { Internal::Types::Array[CloudPDF::Types::AnnotationFreeTextRichTextParagraphsItemRunsItem] }, optional: false, nullable: false
    end
  end
end
