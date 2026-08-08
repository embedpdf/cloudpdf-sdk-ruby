# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsGet200ResponseFieldsItemRadioRef < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :kind

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemRadioRefObjectNumber }, key: "OBJECT_NUMBER"

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemRadioRefFqn }, key: "FQN"
    end
  end
end
