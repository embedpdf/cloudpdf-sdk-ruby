# frozen_string_literal: true

module CloudPDF
  module Types
    class RichTextDocumentInput < Internal::Types::Model
      field :body, -> { CloudPDF::Types::RichTextDocumentInputBody }, optional: true, nullable: false

      field :paragraphs, -> { Internal::Types::Array[CloudPDF::Types::RichTextDocumentInputParagraphsItem] }, optional: false, nullable: false
    end
  end
end
