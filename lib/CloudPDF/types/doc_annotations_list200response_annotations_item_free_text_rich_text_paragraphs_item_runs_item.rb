# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemFreeTextRichTextParagraphsItemRunsItem < Internal::Types::Model
      field :text, -> { String }, optional: false, nullable: false

      field :style, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemFreeTextRichTextParagraphsItemRunsItemStyle }, optional: true, nullable: false
    end
  end
end
