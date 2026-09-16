# frozen_string_literal: true

module CloudPDF
  module Doc
    module Signatures
      module Types
        module AnalysisSignaturesRequestLevel
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
