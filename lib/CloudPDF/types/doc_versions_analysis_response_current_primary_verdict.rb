# frozen_string_literal: true

module CloudPDF
  module Types
    module DocVersionsAnalysisResponseCurrentPrimaryVerdict
      extend CloudPDF::Internal::Types::Enum

      PERMITTED = "permitted"
      FORBIDDEN = "forbidden"
      INCOMPLETE = "incomplete"
    end
  end
end
