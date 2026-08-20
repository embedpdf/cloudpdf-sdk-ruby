# frozen_string_literal: true

module CloudPDF
  module Documents
    module Types
      module DocumentsImportFromRequestMode
        extend CloudPDF::Internal::Types::Enum

        SYNC = "sync"
        ASYNC = "async"
      end
    end
  end
end
