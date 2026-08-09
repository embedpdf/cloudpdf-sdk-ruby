# frozen_string_literal: true

module CloudPDF
  module Types
    module DocHead200ResponseState
      extend CloudPDF::Internal::Types::Enum

      PENDING = "pending"
      READY = "ready"
      FAILED = "failed"
      DELETING = "deleting"
    end
  end
end
