# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItemComboboxRef < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemComboboxRefObjectNumber }, key: "OBJECT_NUMBER"

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemComboboxRefFqn }, key: "FQN"
    end
  end
end
