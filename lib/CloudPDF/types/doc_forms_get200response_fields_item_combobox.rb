# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItemCombobox < Internal::Types::Model
      field :ref, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemComboboxRef }, optional: false, nullable: false

      field :field_object_number, -> { Integer }, optional: false, nullable: false, api_name: "fieldObjectNumber"

      field :name, -> { String }, optional: false, nullable: false

      field :origin, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemComboboxOrigin }, optional: false, nullable: false

      field :flags, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemComboboxFlags }, optional: false, nullable: false

      field :alternate_name, -> { String }, optional: false, nullable: true, api_name: "alternateName"

      field :mapping_name, -> { String }, optional: false, nullable: true, api_name: "mappingName"

      field :value_entry, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemComboboxValueEntry }, optional: false, nullable: false, api_name: "valueEntry"

      field :default_value_entry, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemComboboxDefaultValueEntry }, optional: false, nullable: false, api_name: "defaultValueEntry"

      field :actions, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemComboboxActions }, optional: true, nullable: false

      field :widgets, -> { Internal::Types::Array[CloudPDF::Types::DocFormsGet200ResponseFieldsItemComboboxWidgetsItem] }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false

      field :default_value, -> { String }, optional: false, nullable: false, api_name: "defaultValue"

      field :edit, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :options, -> { Internal::Types::Array[CloudPDF::Types::DocFormsGet200ResponseFieldsItemComboboxOptionsItem] }, optional: false, nullable: false
    end
  end
end
