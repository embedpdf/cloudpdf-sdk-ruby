# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsGet200ResponseCalculationOrderItem < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :kind

      member -> { Cloudpdf::Types::DocFormsGet200ResponseCalculationOrderItemObjectNumber }, key: "OBJECT_NUMBER"

      member -> { Cloudpdf::Types::DocFormsGet200ResponseCalculationOrderItemFqn }, key: "FQN"
    end
  end
end
