# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFreeTextRichTextParagraphsItem < Internal::Types::Model
      field :align, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFreeTextRichTextParagraphsItemAlign }, optional: true, nullable: false

      field :dir, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFreeTextRichTextParagraphsItemDir }, optional: true, nullable: false

      field :line_height, -> { Integer }, optional: true, nullable: false, api_name: "lineHeight"

      field :margins, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFreeTextRichTextParagraphsItemMargins }, optional: true, nullable: false

      field :text_indent, -> { Integer }, optional: true, nullable: false, api_name: "textIndent"

      field :unknown, -> { String }, optional: true, nullable: false

      field :runs, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFreeTextRichTextParagraphsItemRunsItem] }, optional: false, nullable: false
    end
  end
end
