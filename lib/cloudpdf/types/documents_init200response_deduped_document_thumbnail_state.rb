# frozen_string_literal: true

module Cloudpdf
  module Types
    module DocumentsInit200ResponseDedupedDocumentThumbnailState
      extend Cloudpdf::Internal::Types::Enum

      PENDING = "pending"
      READY = "ready"
      LOCKED = "locked"
      FAILED = "failed"
    end
  end
end
