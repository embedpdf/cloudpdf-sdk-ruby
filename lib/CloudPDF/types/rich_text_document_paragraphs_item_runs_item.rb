# frozen_string_literal: true

module CloudPDF
  module Types
    class RichTextDocumentParagraphsItemRunsItem < Internal::Types::Model
      field :text, -> { String }, optional: false, nullable: false

      field :style, -> { CloudPDF::Types::RichTextDocumentParagraphsItemRunsItemStyle }, optional: true, nullable: false
    end
  end
end
