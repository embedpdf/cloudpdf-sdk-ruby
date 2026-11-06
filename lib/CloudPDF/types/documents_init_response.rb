# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsInitResponse < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :status

      member -> { CloudPDF::Types::DocumentsInitResponseCreated }, key: "CREATED"

      member -> { CloudPDF::Types::DocumentsInitResponseResumed }, key: "RESUMED"

      member -> { CloudPDF::Types::DocumentsInitResponseDeduped }, key: "DEDUPED"
    end
  end
end
