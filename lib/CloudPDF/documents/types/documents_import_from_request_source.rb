# frozen_string_literal: true

module CloudPDF
  module Documents
    module Types
      # Where CloudPDF pulls the bytes from. The two shapes differ in WHO supplies the authority to read, not in which
      # storage vendor holds the file.
      class DocumentsImportFromRequestSource < Internal::Types::Model
        extend CloudPDF::Internal::Types::Union

        discriminant :kind

        member -> { CloudPDF::Documents::Types::DocumentsImportFromRequestSourceURL }, key: "URL"

        member -> { CloudPDF::Documents::Types::DocumentsImportFromRequestSourceConnection }, key: "CONNECTION"
      end
    end
  end
end
