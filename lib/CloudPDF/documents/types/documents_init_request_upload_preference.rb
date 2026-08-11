# frozen_string_literal: true

module CloudPDF
  module Documents
    module Types
      module DocumentsInitRequestUploadPreference
        extend CloudPDF::Internal::Types::Enum

        AUTO = "auto"
        PRESIGNED = "presigned"
        PROXY = "proxy"
      end
    end
  end
end
