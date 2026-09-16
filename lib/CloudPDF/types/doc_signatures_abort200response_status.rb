# frozen_string_literal: true

module CloudPDF
  module Types
    module DocSignaturesAbort200ResponseStatus
      extend CloudPDF::Internal::Types::Enum

      ABORTED = "aborted"
      ALREADY_COMPLETED = "already-completed"
      UNKNOWN = "unknown"
    end
  end
end
