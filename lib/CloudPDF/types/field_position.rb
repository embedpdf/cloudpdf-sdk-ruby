# frozen_string_literal: true

module CloudPDF
  module Types
    class FieldPosition < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      member -> { CloudPDF::Types::FieldPositionZero }

      member -> { CloudPDF::Types::FieldPositionAfter }
    end
  end
end
