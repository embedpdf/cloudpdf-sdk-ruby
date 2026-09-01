# frozen_string_literal: true

module CloudPDF
  module Types
    module PdfActionTreeWarningsItem
      extend CloudPDF::Internal::Types::Enum

      CYCLE_DROPPED = "cycle-dropped"
      MALFORMED_NEXT = "malformed-next"
      INCOMPLETE = "incomplete"
      PAYLOAD_DROPPED = "payload-dropped"
    end
  end
end
