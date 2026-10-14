# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchLinkTarget < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      member -> { CloudPDF::Types::PdfLinkTargetWritable }

      member -> { CloudPDF::Types::PdfLinkTarget }
    end
  end
end
