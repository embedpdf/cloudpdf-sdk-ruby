# frozen_string_literal: true

module CloudPDF
  module Types
    class Annotation < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :subtype

      member -> { CloudPDF::Types::AnnotationHighlight }, key: "HIGHLIGHT"

      member -> { CloudPDF::Types::AnnotationUnderline }, key: "UNDERLINE"

      member -> { CloudPDF::Types::AnnotationSquiggly }, key: "SQUIGGLY"

      member -> { CloudPDF::Types::AnnotationStrikeout }, key: "STRIKEOUT"

      member -> { CloudPDF::Types::AnnotationCircle }, key: "CIRCLE"

      member -> { CloudPDF::Types::AnnotationSquare }, key: "SQUARE"

      member -> { CloudPDF::Types::AnnotationPolygon }, key: "POLYGON"

      member -> { CloudPDF::Types::AnnotationPolyline }, key: "POLYLINE"

      member -> { CloudPDF::Types::AnnotationLine }, key: "LINE"

      member -> { CloudPDF::Types::AnnotationLink }, key: "LINK"

      member -> { CloudPDF::Types::AnnotationInk }, key: "INK"

      member -> { CloudPDF::Types::AnnotationFreeText }, key: "FREE_TEXT"

      member -> { CloudPDF::Types::AnnotationCaret }, key: "CARET"

      member -> { CloudPDF::Types::AnnotationText }, key: "TEXT"

      member -> { CloudPDF::Types::AnnotationStamp }, key: "STAMP"

      member -> { CloudPDF::Types::AnnotationFileAttachment }, key: "FILE_ATTACHMENT"

      member -> { CloudPDF::Types::WidgetAnnotation }, key: "WIDGET"

      member -> { CloudPDF::Types::AnnotationRedact }, key: "REDACT"

      member -> { CloudPDF::Types::AnnotationPopup }, key: "POPUP"

      member -> { CloudPDF::Types::AnnotationUnsupported }, key: "UNSUPPORTED"
    end
  end
end
