# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsGet200ResponseFieldsItemUnknownRef < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :kind

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemUnknownRefObjectNumber }, key: "OBJECT_NUMBER"

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemUnknownRefFqn }, key: "FQN"
    end
  end
end
