# frozen_string_literal: true

module CloudPDF
  module Types
    module EngineErrorCode
      extend CloudPDF::Internal::Types::Enum

      UNKNOWN = "Unknown"
      INVALID_ARG = "InvalidArg"
      DOC_NOT_OPEN = "DocNotOpen"
      DOC_OPEN_FAILED = "DocOpenFailed"
      DOC_PASSWORD_REQUIRED = "DocPasswordRequired"
      DOC_PASSWORD_INCORRECT = "DocPasswordIncorrect"
      GRANT_PASSPHRASE_REQUIRED = "GrantPassphraseRequired"
      ABORTED = "Aborted"
      NETWORK = "Network"
      UNAUTHENTICATED = "Unauthenticated"
      FORBIDDEN = "Forbidden"
      NOT_FOUND = "NotFound"
      WIRE_FORMAT = "WireFormat"
      RUNTIME_UNAVAILABLE = "RuntimeUnavailable"
      LAYER_VERSION_CONFLICT = "LayerVersionConflict"
      NOT_IMPLEMENTED = "NotImplemented"
      MALFORMED_PDF = "MalformedPdf"
      SIGNING_PENDING = "SigningPending"
      SIGNING_EXPIRED = "SigningExpired"
      SIGNING_VERSION_MISMATCH = "SigningVersionMismatch"
      SIGNATURE_REFUSED = "SignatureRefused"
      PROTECTED_DOCUMENT = "ProtectedDocument"
      PAYLOAD_TOO_LARGE = "PayloadTooLarge"
      OBJECT_NUMBER_UNAVAILABLE = "ObjectNumberUnavailable"
      LAYER_FULL = "LayerFull"
      CHANGE_CONFLICT = "ChangeConflict"
      UNDO_UNAVAILABLE = "UndoUnavailable"
      IDEMPOTENCY_KEY_REUSED = "IdempotencyKeyReused"
      LAYER_DELETED = "LayerDeleted"
      VISITOR_IDENTITY_REQUIRED = "VisitorIdentityRequired"
      CONFLICT = "Conflict"
      ENGINE_BUSY = "EngineBusy"
      ENGINE_RESTARTING = "EngineRestarting"
      DOCUMENT_QUARANTINED = "DocumentQuarantined"
      THUMBNAIL_NOT_READY = "ThumbnailNotReady"
      TOO_MANY_REQUESTS = "TooManyRequests"
      GRANT_EXPIRED = "GrantExpired"
      ORIGIN_REQUIRED = "OriginRequired"
      ORIGIN_NOT_ALLOWED = "OriginNotAllowed"
      FEATURE_NOT_ENABLED = "FeatureNotEnabled"
      FEATURE_STOPPED = "FeatureStopped"
      LICENSE_INVALID = "LicenseInvalid"
      LICENSE_USAGE_LIMIT = "LicenseUsageLimit"
      UPSTREAM_ERROR = "UpstreamError"
    end
  end
end
