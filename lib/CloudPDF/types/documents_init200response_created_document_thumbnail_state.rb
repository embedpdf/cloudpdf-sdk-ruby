# frozen_string_literal: true

module CloudPDF
  module Types
    module DocumentsInit200ResponseCreatedDocumentThumbnailState
      extend CloudPDF::Internal::Types::Enum

      PENDING = "pending"
      READY = "ready"
      LOCKED = "locked"
      FAILED = "failed"
    end
  end
end
