# frozen_string_literal: true

module CloudPDF
  module Types
    module FontRestrictionsItem
      extend CloudPDF::Internal::Types::Enum

      SUBSET = "subset"
      NOT_EMBEDDED = "not-embedded"
      PREVIEW_AND_PRINT = "preview-and-print"
      UNSUPPORTED_FORMAT = "unsupported-format"
      NO_UNICODE_MAP = "no-unicode-map"
      NOT_SERVED = "not-served"
    end
  end
end
