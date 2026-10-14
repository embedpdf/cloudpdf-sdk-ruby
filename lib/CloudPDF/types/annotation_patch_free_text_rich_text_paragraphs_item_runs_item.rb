# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchFreeTextRichTextParagraphsItemRunsItem < Internal::Types::Model
      field :text, -> { String }, optional: false, nullable: false

      field :style, -> { CloudPDF::Types::AnnotationPatchFreeTextRichTextParagraphsItemRunsItemStyle }, optional: true, nullable: false
    end
  end
end
