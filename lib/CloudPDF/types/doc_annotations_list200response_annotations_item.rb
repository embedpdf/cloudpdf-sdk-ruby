# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItem < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :subtype

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemHighlight }, key: "HIGHLIGHT"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemUnderline }, key: "UNDERLINE"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemSquiggly }, key: "SQUIGGLY"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemStrikeout }, key: "STRIKEOUT"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemCircle }, key: "CIRCLE"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemSquare }, key: "SQUARE"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemPolygon }, key: "POLYGON"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemPolyline }, key: "POLYLINE"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLine }, key: "LINE"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLink }, key: "LINK"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemInk }, key: "INK"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemFreeText }, key: "FREE_TEXT"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemCaret }, key: "CARET"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemText }, key: "TEXT"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemStamp }, key: "STAMP"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemFileAttachment }, key: "FILE_ATTACHMENT"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemWidget }, key: "WIDGET"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemRedact }, key: "REDACT"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemUnsupported }, key: "UNSUPPORTED"
    end
  end
end
