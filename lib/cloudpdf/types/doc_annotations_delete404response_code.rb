# frozen_string_literal: true

module Cloudpdf
  module Types
    module DocAnnotationsDelete404ResponseCode
      extend Cloudpdf::Internal::Types::Enum

      UNKNOWN = "Unknown"
      INVALID_ARG = "InvalidArg"
      DOC_NOT_OPEN = "DocNotOpen"
      DOC_OPEN_FAILED = "DocOpenFailed"
      DOC_PASSWORD_REQUIRED = "DocPasswordRequired"
      DOC_PASSWORD_INCORRECT = "DocPasswordIncorrect"
      ABORTED = "Aborted"
      NETWORK = "Network"
      UNAUTHENTICATED = "Unauthenticated"
      FORBIDDEN = "Forbidden"
      NOT_FOUND = "NotFound"
      WIRE_FORMAT = "WireFormat"
      RUNTIME_UNAVAILABLE = "RuntimeUnavailable"
      INVALID_REFERENCE = "InvalidReference"
      WEAK_ANNOTATION_SESSION_CONFLICT = "WeakAnnotationSessionConflict"
      LAYER_VERSION_CONFLICT = "LayerVersionConflict"
      NOT_IMPLEMENTED = "NotImplemented"
      MALFORMED_PDF = "MalformedPdf"
    end
  end
end
