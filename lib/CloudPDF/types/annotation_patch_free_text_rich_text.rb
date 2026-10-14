# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchFreeTextRichText < Internal::Types::Model
      field :body, -> { CloudPDF::Types::AnnotationPatchFreeTextRichTextBody }, optional: true, nullable: false

      field :paragraphs, -> { Internal::Types::Array[CloudPDF::Types::AnnotationPatchFreeTextRichTextParagraphsItem] }, optional: false, nullable: false
    end
  end
end
