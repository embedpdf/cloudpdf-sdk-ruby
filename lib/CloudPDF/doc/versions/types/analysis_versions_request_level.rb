# frozen_string_literal: true

module CloudPDF
  module Doc
    module Versions
      module Types
        module AnalysisVersionsRequestLevel
          extend CloudPDF::Internal::Types::Enum

          NONE = "none"
          LTA = "lta"
          FILL = "fill"
          ANNOTATE = "annotate"
        end
      end
    end
  end
end
