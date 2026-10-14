# frozen_string_literal: true

module CloudPDF
  module Types
    module DocManifest200ResponseProtectionEnforced
      extend CloudPDF::Internal::Types::Enum

      NONE = "none"
      LTA = "lta"
      FILL = "fill"
      ANNOTATE = "annotate"
    end
  end
end
