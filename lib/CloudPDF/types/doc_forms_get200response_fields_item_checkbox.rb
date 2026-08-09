# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItemCheckbox < Internal::Types::Model
      field :ref, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemCheckboxRef }, optional: false, nullable: false

      field :field_object_number, -> { Integer }, optional: false, nullable: false, api_name: "fieldObjectNumber"

      field :name, -> { String }, optional: false, nullable: false

      field :origin, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemCheckboxOrigin }, optional: false, nullable: false

      field :flags, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemCheckboxFlags }, optional: false, nullable: false

      field :alternate_name, -> { String }, optional: false, nullable: true, api_name: "alternateName"

      field :mapping_name, -> { String }, optional: false, nullable: true, api_name: "mappingName"

      field :value_entry, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemCheckboxValueEntry }, optional: false, nullable: false, api_name: "valueEntry"

      field :default_value_entry, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemCheckboxDefaultValueEntry }, optional: false, nullable: false, api_name: "defaultValueEntry"

      field :actions, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemCheckboxActions }, optional: true, nullable: false

      field :widgets, -> { Internal::Types::Array[CloudPDF::Types::DocFormsGet200ResponseFieldsItemCheckboxWidgetsItem] }, optional: false, nullable: false

      field :checked, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :export_value, -> { String }, optional: false, nullable: false, api_name: "exportValue"
    end
  end
end
