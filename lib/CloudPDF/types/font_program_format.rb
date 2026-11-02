# frozen_string_literal: true

module CloudPDF
  module Types
    module FontProgramFormat
      extend CloudPDF::Internal::Types::Enum

      TRUETYPE = "truetype"
      OPENTYPE = "opentype"
      CFF = "cff"
      TYPE1 = "type1"
      TYPE3 = "type3"
    end
  end
end
