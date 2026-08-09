# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItemUnknownRef < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemUnknownRefObjectNumber }, key: "OBJECT_NUMBER"

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemUnknownRefFqn }, key: "FQN"
    end
  end
end
