# frozen_string_literal: true

module CloudPDF
  module Types
    module WidgetPatchBorderStyle
      extend CloudPDF::Internal::Types::Enum

      SOLID = "solid"
      DASHED = "dashed"
      BEVELED = "beveled"
      INSET = "inset"
      UNDERLINE = "underline"
    end
  end
end
