# frozen_string_literal: true

module CloudPDF
  module Types
    class OutlinePosition < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      member -> { CloudPDF::Types::OutlinePositionZero }

      member -> { CloudPDF::Types::OutlinePositionAfter }
    end
  end
end
