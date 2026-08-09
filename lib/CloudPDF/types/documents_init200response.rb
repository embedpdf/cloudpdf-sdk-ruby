# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsInit200Response < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :tag

      member -> { CloudPDF::Types::DocumentsInit200ResponseCreated }, key: "CREATED"

      member -> { CloudPDF::Types::DocumentsInit200ResponseResumed }, key: "RESUMED"

      member -> { CloudPDF::Types::DocumentsInit200ResponseDeduped }, key: "DEDUPED"
    end
  end
end
