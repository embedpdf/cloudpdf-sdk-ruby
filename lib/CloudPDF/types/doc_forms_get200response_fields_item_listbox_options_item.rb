# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItemListboxOptionsItem < Internal::Types::Model
      field :label, -> { String }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false

      field :selected, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
