# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemFreeTextRichTextParagraphsItem < Internal::Types::Model
      field :align, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemFreeTextRichTextParagraphsItemAlign }, optional: true, nullable: false

      field :dir, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemFreeTextRichTextParagraphsItemDir }, optional: true, nullable: false

      field :line_height, -> { Integer }, optional: true, nullable: false, api_name: "lineHeight"

      field :margins, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemFreeTextRichTextParagraphsItemMargins }, optional: true, nullable: false

      field :text_indent, -> { Integer }, optional: true, nullable: false, api_name: "textIndent"

      field :unknown, -> { String }, optional: true, nullable: false

      field :runs, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemFreeTextRichTextParagraphsItemRunsItem] }, optional: false, nullable: false
    end
  end
end
