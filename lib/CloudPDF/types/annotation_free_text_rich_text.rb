# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationFreeTextRichText < Internal::Types::Model
      field :body, -> { CloudPDF::Types::AnnotationFreeTextRichTextBody }, optional: false, nullable: false

      field :paragraphs, -> { Internal::Types::Array[CloudPDF::Types::AnnotationFreeTextRichTextParagraphsItem] }, optional: false, nullable: false
    end
  end
end
