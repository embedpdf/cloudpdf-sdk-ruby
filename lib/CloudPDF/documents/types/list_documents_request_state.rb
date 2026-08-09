# frozen_string_literal: true

module CloudPDF
  module Documents
    module Types
      module ListDocumentsRequestState
        extend CloudPDF::Internal::Types::Enum

        PENDING = "pending"
        READY = "ready"
        FAILED = "failed"
        DELETING = "deleting"
      end
    end
  end
end
