# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationDraft < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :subtype

      member -> { CloudPDF::Types::AnnotationDraftHighlight }, key: "HIGHLIGHT"

      member -> { CloudPDF::Types::AnnotationDraftUnderline }, key: "UNDERLINE"

      member -> { CloudPDF::Types::AnnotationDraftSquiggly }, key: "SQUIGGLY"

      member -> { CloudPDF::Types::AnnotationDraftStrikeout }, key: "STRIKEOUT"

      member -> { CloudPDF::Types::AnnotationDraftCircle }, key: "CIRCLE"

      member -> { CloudPDF::Types::AnnotationDraftSquare }, key: "SQUARE"

      member -> { CloudPDF::Types::AnnotationDraftPolygon }, key: "POLYGON"

      member -> { CloudPDF::Types::AnnotationDraftPolyline }, key: "POLYLINE"

      member -> { CloudPDF::Types::AnnotationDraftLine }, key: "LINE"

      member -> { CloudPDF::Types::AnnotationDraftLink }, key: "LINK"

      member -> { CloudPDF::Types::AnnotationDraftInk }, key: "INK"

      member -> { CloudPDF::Types::AnnotationDraftFreeText }, key: "FREE_TEXT"

      member -> { CloudPDF::Types::AnnotationDraftCaret }, key: "CARET"

      member -> { CloudPDF::Types::AnnotationDraftText }, key: "TEXT"

      member -> { CloudPDF::Types::AnnotationDraftStamp }, key: "STAMP"

      member -> { CloudPDF::Types::AnnotationDraftFileAttachment }, key: "FILE_ATTACHMENT"

      member -> { CloudPDF::Types::AnnotationDraftWidget }, key: "WIDGET"

      member -> { CloudPDF::Types::AnnotationDraftRedact }, key: "REDACT"

      member -> { CloudPDF::Types::AnnotationDraftPopup }, key: "POPUP"
    end
  end
end
