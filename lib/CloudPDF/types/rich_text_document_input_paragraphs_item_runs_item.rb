# frozen_string_literal: true

module CloudPDF
  module Types
    class RichTextDocumentInputParagraphsItemRunsItem < Internal::Types::Model
      field :text, -> { String }, optional: false, nullable: false

      field :style, -> { CloudPDF::Types::RichTextDocumentInputParagraphsItemRunsItemStyle }, optional: true, nullable: false
    end
  end
end
