# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldRef < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::FormFieldRefObjectNumber }, key: "OBJECT_NUMBER"

      member -> { CloudPDF::Types::FormFieldRefFqn }, key: "FQN"
    end
  end
end
