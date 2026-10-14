# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationDraftFreeTextRichTextParagraphsItemRunsItem < Internal::Types::Model
      field :text, -> { String }, optional: false, nullable: false

      field :style, -> { CloudPDF::Types::AnnotationDraftFreeTextRichTextParagraphsItemRunsItemStyle }, optional: true, nullable: false
    end
  end
end
