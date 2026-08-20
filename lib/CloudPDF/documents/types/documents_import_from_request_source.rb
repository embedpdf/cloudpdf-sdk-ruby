# frozen_string_literal: true

module CloudPDF
  module Documents
    module Types
      class DocumentsImportFromRequestSource < Internal::Types::Model
        extend CloudPDF::Internal::Types::Union

        discriminant :kind

        member -> { CloudPDF::Documents::Types::DocumentsImportFromRequestSourceURL }, key: "URL"

        member -> { CloudPDF::Documents::Types::DocumentsImportFromRequestSourceConnection }, key: "CONNECTION"
      end
    end
  end
end
