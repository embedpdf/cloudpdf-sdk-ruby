# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItemComboboxActionsValidateRoot < Internal::Types::Model
      field :type, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemComboboxActionsValidateRootType }, optional: false, nullable: false

      field :subtype, -> { String }, optional: false, nullable: false

      field :script, -> { String }, optional: true, nullable: false

      field :next_, -> { Internal::Types::Array[Object] }, optional: false, nullable: false, api_name: "next"
    end
  end
end
