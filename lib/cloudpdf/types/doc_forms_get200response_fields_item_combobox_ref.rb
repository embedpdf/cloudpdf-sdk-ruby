# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsGet200ResponseFieldsItemComboboxRef < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :kind

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemComboboxRefObjectNumber }, key: "OBJECT_NUMBER"

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemComboboxRefFqn }, key: "FQN"
    end
  end
end
