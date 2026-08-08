# frozen_string_literal: true

module Cloudpdf
  module Documents
    module Types
      module DocumentsInitRequestDedupMode
        extend Cloudpdf::Internal::Types::Enum

        ALWAYS_CREATE = "always-create"
        REUSE_EXISTING = "reuse-existing"
      end
    end
  end
end
