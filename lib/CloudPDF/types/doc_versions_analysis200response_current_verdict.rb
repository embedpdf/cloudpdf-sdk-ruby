# frozen_string_literal: true

module CloudPDF
  module Types
    module DocVersionsAnalysis200ResponseCurrentVerdict
      extend CloudPDF::Internal::Types::Enum

      UNCHANGED = "unchanged"
      PERMITTED = "permitted"
      FORBIDDEN = "forbidden"
      INDETERMINATE = "indeterminate"
    end
  end
end
