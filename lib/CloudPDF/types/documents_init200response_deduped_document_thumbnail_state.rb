# frozen_string_literal: true

module CloudPDF
  module Types
    module DocumentsInit200ResponseDedupedDocumentThumbnailState
      extend CloudPDF::Internal::Types::Enum

      PENDING = "pending"
      READY = "ready"
      LOCKED = "locked"
      FAILED = "failed"
    end
  end
end
