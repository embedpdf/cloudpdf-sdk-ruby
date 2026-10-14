# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatch < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :subtype

      member -> { CloudPDF::Types::AnnotationPatchHighlight }, key: "HIGHLIGHT"

      member -> { CloudPDF::Types::AnnotationPatchUnderline }, key: "UNDERLINE"

      member -> { CloudPDF::Types::AnnotationPatchSquiggly }, key: "SQUIGGLY"

      member -> { CloudPDF::Types::AnnotationPatchStrikeout }, key: "STRIKEOUT"

      member -> { CloudPDF::Types::AnnotationPatchCircle }, key: "CIRCLE"

      member -> { CloudPDF::Types::AnnotationPatchSquare }, key: "SQUARE"

      member -> { CloudPDF::Types::AnnotationPatchPolygon }, key: "POLYGON"

      member -> { CloudPDF::Types::AnnotationPatchPolyline }, key: "POLYLINE"

      member -> { CloudPDF::Types::AnnotationPatchLine }, key: "LINE"

      member -> { CloudPDF::Types::AnnotationPatchLink }, key: "LINK"

      member -> { CloudPDF::Types::AnnotationPatchInk }, key: "INK"

      member -> { CloudPDF::Types::AnnotationPatchFreeText }, key: "FREE_TEXT"

      member -> { CloudPDF::Types::AnnotationPatchCaret }, key: "CARET"

      member -> { CloudPDF::Types::AnnotationPatchText }, key: "TEXT"

      member -> { CloudPDF::Types::AnnotationPatchStamp }, key: "STAMP"

      member -> { CloudPDF::Types::AnnotationPatchFileAttachment }, key: "FILE_ATTACHMENT"

      member -> { CloudPDF::Types::WidgetPatch }, key: "WIDGET"

      member -> { CloudPDF::Types::AnnotationPatchRedact }, key: "REDACT"

      member -> { CloudPDF::Types::AnnotationPatchPopup }, key: "POPUP"
    end
  end
end
