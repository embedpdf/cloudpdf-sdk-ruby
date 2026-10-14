# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationFreeTextRichTextParagraphsItemRunsItem < Internal::Types::Model
      field :text, -> { String }, optional: false, nullable: false

      field :style, -> { CloudPDF::Types::AnnotationFreeTextRichTextParagraphsItemRunsItemStyle }, optional: true, nullable: false
    end
  end
end
