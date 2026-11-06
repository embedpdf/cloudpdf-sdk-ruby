# frozen_string_literal: true

module CloudPDF
  module Types
    module DocSignaturesCompleteResponseSignatureCoverage
      extend CloudPDF::Internal::Types::Enum

      WHOLE_REVISION = "whole-revision"
      PARTIAL = "partial"
      MALFORMED = "malformed"
    end
  end
end
