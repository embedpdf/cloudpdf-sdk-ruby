# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItem < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :subtype

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemHighlight }, key: "HIGHLIGHT"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemUnderline }, key: "UNDERLINE"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemSquiggly }, key: "SQUIGGLY"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemStrikeout }, key: "STRIKEOUT"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemCircle }, key: "CIRCLE"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemSquare }, key: "SQUARE"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemPolygon }, key: "POLYGON"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemPolyline }, key: "POLYLINE"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLine }, key: "LINE"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLink }, key: "LINK"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemInk }, key: "INK"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFreeText }, key: "FREE_TEXT"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemCaret }, key: "CARET"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemText }, key: "TEXT"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemStamp }, key: "STAMP"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemFileAttachment }, key: "FILE_ATTACHMENT"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemWidget }, key: "WIDGET"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemRedact }, key: "REDACT"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemUnsupported }, key: "UNSUPPORTED"
    end
  end
end
