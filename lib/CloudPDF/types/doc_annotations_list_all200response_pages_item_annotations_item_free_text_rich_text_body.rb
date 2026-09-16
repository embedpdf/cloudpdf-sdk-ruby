# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFreeTextRichTextBody < Internal::Types::Model
      field :family, -> { String }, optional: false, nullable: false

      field :weight, -> { Integer }, optional: false, nullable: false

      field :italic, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :size, -> { Integer }, optional: false, nullable: false

      field :color, -> { String }, optional: false, nullable: false

      field :decoration, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFreeTextRichTextBodyDecorationItem] }, optional: false, nullable: false

      field :script, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFreeTextRichTextBodyScript }, optional: false, nullable: false

      field :letter_spacing, -> { Integer }, optional: false, nullable: false, api_name: "letterSpacing"

      field :horizontal_scale, -> { Integer }, optional: false, nullable: false, api_name: "horizontalScale"

      field :unknown, -> { String }, optional: true, nullable: false

      field :align, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFreeTextRichTextBodyAlign }, optional: false, nullable: false

      field :dir, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFreeTextRichTextBodyDir }, optional: false, nullable: false

      field :line_height, -> { Integer }, optional: true, nullable: false, api_name: "lineHeight"

      field :margins, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFreeTextRichTextBodyMargins }, optional: true, nullable: false

      field :text_indent, -> { Integer }, optional: true, nullable: false, api_name: "textIndent"
    end
  end
end
