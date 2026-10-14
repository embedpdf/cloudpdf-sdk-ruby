# frozen_string_literal: true

module CloudPDF
  module Types
    module DocSignaturesCancel200ResponseStatus
      extend CloudPDF::Internal::Types::Enum

      CANCELLED = "cancelled"
      ALREADY_COMPLETED = "already-completed"
      UNKNOWN = "unknown"
    end
  end
end
