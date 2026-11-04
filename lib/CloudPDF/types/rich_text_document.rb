# frozen_string_literal: true

module CloudPDF
  module Types
    class RichTextDocument < Internal::Types::Model
      field :body, -> { CloudPDF::Types::RichTextDocumentBody }, optional: false, nullable: false

      field :paragraphs, -> { Internal::Types::Array[CloudPDF::Types::RichTextDocumentParagraphsItem] }, optional: false, nullable: false
    end
  end
end
