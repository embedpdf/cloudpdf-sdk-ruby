# frozen_string_literal: true

module CloudPDF
  module Types
    module DocHead200ResponseEncryptionState
      extend CloudPDF::Internal::Types::Enum

      UNKNOWN = "unknown"
      NONE = "none"
      ENCRYPTED = "encrypted"
      UNSUPPORTED = "unsupported"
    end
  end
end
