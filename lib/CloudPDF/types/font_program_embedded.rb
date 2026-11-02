# frozen_string_literal: true

module CloudPDF
  module Types
    module FontProgramEmbedded
      extend CloudPDF::Internal::Types::Enum

      WHOLE = "whole"
      SUBSET = "subset"
      NONE = "none"
    end
  end
end
