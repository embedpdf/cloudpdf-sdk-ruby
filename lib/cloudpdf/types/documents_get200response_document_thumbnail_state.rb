# frozen_string_literal: true

module Cloudpdf
  module Types
    module DocumentsGet200ResponseDocumentThumbnailState
      extend Cloudpdf::Internal::Types::Enum

      PENDING = "pending"
      READY = "ready"
      LOCKED = "locked"
      FAILED = "failed"
    end
  end
end
