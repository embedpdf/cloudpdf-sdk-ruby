# frozen_string_literal: true

module Cloudpdf
  module Types
    module DocumentsGet200ResponseDocumentState
      extend Cloudpdf::Internal::Types::Enum

      PENDING = "pending"
      READY = "ready"
      FAILED = "failed"
      DELETING = "deleting"
    end
  end
end
