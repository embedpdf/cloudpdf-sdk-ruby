# frozen_string_literal: true

module CloudPDF
  module Types
    module PdfLinkTargetWritableNamedName
      extend CloudPDF::Internal::Types::Enum

      NEXT_PAGE = "NextPage"
      PREV_PAGE = "PrevPage"
      FIRST_PAGE = "FirstPage"
      LAST_PAGE = "LastPage"
    end
  end
end
