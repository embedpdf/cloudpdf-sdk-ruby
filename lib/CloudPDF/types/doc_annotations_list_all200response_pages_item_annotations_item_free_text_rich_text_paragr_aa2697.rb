# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFreeTextRichTextParagraphsItemMargins < Internal::Types::Model
      field :top, -> { Integer }, optional: false, nullable: false

      field :bottom, -> { Integer }, optional: false, nullable: false

      field :left, -> { Integer }, optional: false, nullable: false

      field :right, -> { Integer }, optional: false, nullable: false
    end
  end
end
