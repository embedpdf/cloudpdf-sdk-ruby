# frozen_string_literal: true

module CloudPDF
  module Types
    module DocumentsInitResponseCreatedDocumentState
      extend CloudPDF::Internal::Types::Enum

      PENDING = "pending"
      READY = "ready"
      FAILED = "failed"
      DELETING = "deleting"
    end
  end
end
