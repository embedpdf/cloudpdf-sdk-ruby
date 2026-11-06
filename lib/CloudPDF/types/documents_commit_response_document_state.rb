# frozen_string_literal: true

module CloudPDF
  module Types
    module DocumentsCommitResponseDocumentState
      extend CloudPDF::Internal::Types::Enum

      PENDING = "pending"
      READY = "ready"
      FAILED = "failed"
      DELETING = "deleting"
    end
  end
end
