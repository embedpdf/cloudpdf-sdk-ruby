# frozen_string_literal: true

module Cloudpdf
  module Types
    module DocHead200ResponseEncryptionState
      extend Cloudpdf::Internal::Types::Enum

      UNKNOWN = "unknown"
      NONE = "none"
      ENCRYPTED = "encrypted"
      UNSUPPORTED = "unsupported"
    end
  end
end
