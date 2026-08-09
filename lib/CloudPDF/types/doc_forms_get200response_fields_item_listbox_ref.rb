# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItemListboxRef < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemListboxRefObjectNumber }, key: "OBJECT_NUMBER"

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemListboxRefFqn }, key: "FQN"
    end
  end
end
