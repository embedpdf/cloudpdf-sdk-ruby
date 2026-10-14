# frozen_string_literal: true

module CloudPDF
  module Types
    module AnnotationInkBorderStyle
      extend CloudPDF::Internal::Types::Enum

      SOLID = "solid"
      DASHED = "dashed"
      BEVELED = "beveled"
      INSET = "inset"
    end
  end
end
