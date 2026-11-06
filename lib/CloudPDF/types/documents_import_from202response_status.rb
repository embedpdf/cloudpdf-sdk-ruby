# frozen_string_literal: true

module CloudPDF
  module Types
    module DocumentsImportFrom202ResponseStatus
      extend CloudPDF::Internal::Types::Enum

      IMPORTED = "imported"
      DEDUPED = "deduped"
      ACCEPTED = "accepted"
    end
  end
end
