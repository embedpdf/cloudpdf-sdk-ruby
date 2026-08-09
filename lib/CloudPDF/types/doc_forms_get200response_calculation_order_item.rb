# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseCalculationOrderItem < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocFormsGet200ResponseCalculationOrderItemObjectNumber }, key: "OBJECT_NUMBER"

      member -> { CloudPDF::Types::DocFormsGet200ResponseCalculationOrderItemFqn }, key: "FQN"
    end
  end
end
