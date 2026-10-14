# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationDraftFreeTextRichText < Internal::Types::Model
      field :body, -> { CloudPDF::Types::AnnotationDraftFreeTextRichTextBody }, optional: true, nullable: false

      field :paragraphs, -> { Internal::Types::Array[CloudPDF::Types::AnnotationDraftFreeTextRichTextParagraphsItem] }, optional: false, nullable: false
    end
  end
end
