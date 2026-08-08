# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsGet200ResponseFieldsItemPushbuttonRef < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :kind

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemPushbuttonRefObjectNumber }, key: "OBJECT_NUMBER"

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemPushbuttonRefFqn }, key: "FQN"
    end
  end
end
