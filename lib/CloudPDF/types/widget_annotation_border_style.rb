# frozen_string_literal: true

module CloudPDF
  module Types
    module WidgetAnnotationBorderStyle
      extend CloudPDF::Internal::Types::Enum

      SOLID = "solid"
      DASHED = "dashed"
      BEVELED = "beveled"
      INSET = "inset"
      UNDERLINE = "underline"
    end
  end
end
