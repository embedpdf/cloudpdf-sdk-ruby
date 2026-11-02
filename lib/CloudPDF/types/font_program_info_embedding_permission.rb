# frozen_string_literal: true

module CloudPDF
  module Types
    module FontProgramInfoEmbeddingPermission
      extend CloudPDF::Internal::Types::Enum

      INSTALLABLE = "installable"
      EDITABLE = "editable"
      PREVIEW_AND_PRINT = "preview-and-print"
    end
  end
end
