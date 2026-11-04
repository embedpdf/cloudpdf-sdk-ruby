# frozen_string_literal: true

module CloudPDF
  module Types
    class RichTextDocumentParagraphsItem < Internal::Types::Model
      field :align, -> { CloudPDF::Types::RichTextDocumentParagraphsItemAlign }, optional: true, nullable: false

      field :dir, -> { CloudPDF::Types::RichTextDocumentParagraphsItemDir }, optional: true, nullable: false

      field :line_height, -> { Integer }, optional: true, nullable: false, api_name: "lineHeight"

      field :margins, -> { CloudPDF::Types::RichTextDocumentParagraphsItemMargins }, optional: true, nullable: false

      field :text_indent, -> { Integer }, optional: true, nullable: false, api_name: "textIndent"

      field :unknown, -> { String }, optional: true, nullable: false

      field :runs, -> { Internal::Types::Array[CloudPDF::Types::RichTextDocumentParagraphsItemRunsItem] }, optional: false, nullable: false
    end
  end
end
