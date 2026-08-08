# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsGet200ResponseFieldsItemTextRef < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :kind

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemTextRefObjectNumber }, key: "OBJECT_NUMBER"

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemTextRefFqn }, key: "FQN"
    end
  end
end
