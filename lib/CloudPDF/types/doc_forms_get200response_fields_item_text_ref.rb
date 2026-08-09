# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItemTextRef < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemTextRefObjectNumber }, key: "OBJECT_NUMBER"

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemTextRefFqn }, key: "FQN"
    end
  end
end
