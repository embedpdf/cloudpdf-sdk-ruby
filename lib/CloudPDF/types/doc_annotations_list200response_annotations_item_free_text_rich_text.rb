# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemFreeTextRichText < Internal::Types::Model
      field :body, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemFreeTextRichTextBody }, optional: false, nullable: false

      field :paragraphs, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemFreeTextRichTextParagraphsItem] }, optional: false, nullable: false
    end
  end
end
