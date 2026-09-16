# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFreeTextRichTextParagraphsItemRunsItemStyle < Internal::Types::Model
      field :family, -> { String }, optional: true, nullable: false

      field :weight, -> { Integer }, optional: true, nullable: false

      field :italic, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :size, -> { Integer }, optional: true, nullable: false

      field :color, -> { String }, optional: true, nullable: false

      field :decoration, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFreeTextRichTextParagraphsItemRunsItemStyleDecorationItem] }, optional: true, nullable: false

      field :script, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFreeTextRichTextParagraphsItemRunsItemStyleScript }, optional: true, nullable: false

      field :letter_spacing, -> { Integer }, optional: true, nullable: false, api_name: "letterSpacing"

      field :horizontal_scale, -> { Integer }, optional: true, nullable: false, api_name: "horizontalScale"

      field :unknown, -> { String }, optional: true, nullable: false
    end
  end
end
