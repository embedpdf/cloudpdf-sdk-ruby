# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItemSignatureRef < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemSignatureRefObjectNumber }, key: "OBJECT_NUMBER"

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemSignatureRefFqn }, key: "FQN"
    end
  end
end
