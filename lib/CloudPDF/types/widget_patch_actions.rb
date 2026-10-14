# frozen_string_literal: true

module CloudPDF
  module Types
    class WidgetPatchActions < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      member -> { CloudPDF::Types::WidgetActionsPatch }

      member -> { CloudPDF::Types::PdfAnnotationActions }
    end
  end
end
