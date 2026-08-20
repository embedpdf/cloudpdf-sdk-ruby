# frozen_string_literal: true

module CloudPDF
  module Types
    module DocumentsImportFrom200ResponseDocumentThumbnailState
      extend CloudPDF::Internal::Types::Enum

      PENDING = "pending"
      READY = "ready"
      LOCKED = "locked"
      FAILED = "failed"
    end
  end
end
