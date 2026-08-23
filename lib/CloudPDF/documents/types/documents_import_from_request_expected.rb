# frozen_string_literal: true

module CloudPDF
  module Documents
    module Types
      # Integrity pins, enforced when present. When absent, the server-observed values become authoritative.
      class DocumentsImportFromRequestExpected < Internal::Types::Model
        field :size_bytes, -> { Integer }, optional: true, nullable: false, api_name: "sizeBytes"

        field :sha256, -> { String }, optional: true, nullable: false
      end
    end
  end
end
