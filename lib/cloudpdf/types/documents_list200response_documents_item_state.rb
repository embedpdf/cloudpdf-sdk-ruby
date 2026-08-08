# frozen_string_literal: true

module Cloudpdf
  module Types
    module DocumentsList200ResponseDocumentsItemState
      extend Cloudpdf::Internal::Types::Enum

      PENDING = "pending"
      READY = "ready"
      FAILED = "failed"
      DELETING = "deleting"
    end
  end
end
