# frozen_string_literal: true

module Cloudpdf
  module Types
    module DocumentsInit200ResponseDedupedDocumentState
      extend Cloudpdf::Internal::Types::Enum

      PENDING = "pending"
      READY = "ready"
      FAILED = "failed"
      DELETING = "deleting"
    end
  end
end
