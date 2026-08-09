# frozen_string_literal: true

module CloudPDF
  module Documents
    module Types
      module DocumentsInitRequestDedupMode
        extend CloudPDF::Internal::Types::Enum

        ALWAYS_CREATE = "always-create"
        REUSE_EXISTING = "reuse-existing"
      end
    end
  end
end
