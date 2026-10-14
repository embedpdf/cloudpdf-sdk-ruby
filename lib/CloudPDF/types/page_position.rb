# frozen_string_literal: true

module CloudPDF
  module Types
    class PagePosition < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      member -> { CloudPDF::Types::PagePositionZero }

      member -> { CloudPDF::Types::PagePositionAfter }
    end
  end
end
