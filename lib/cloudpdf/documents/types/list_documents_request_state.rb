# frozen_string_literal: true

module Cloudpdf
  module Documents
    module Types
      module ListDocumentsRequestState
        extend Cloudpdf::Internal::Types::Enum

        PENDING = "pending"
        READY = "ready"
        FAILED = "failed"
        DELETING = "deleting"
      end
    end
  end
end
