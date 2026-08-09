# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItemText < Internal::Types::Model
      field :ref, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemTextRef }, optional: false, nullable: false

      field :field_object_number, -> { Integer }, optional: false, nullable: false, api_name: "fieldObjectNumber"

      field :name, -> { String }, optional: false, nullable: false

      field :origin, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemTextOrigin }, optional: false, nullable: false

      field :flags, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemTextFlags }, optional: false, nullable: false

      field :alternate_name, -> { String }, optional: false, nullable: true, api_name: "alternateName"

      field :mapping_name, -> { String }, optional: false, nullable: true, api_name: "mappingName"

      field :value_entry, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemTextValueEntry }, optional: false, nullable: false, api_name: "valueEntry"

      field :default_value_entry, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemTextDefaultValueEntry }, optional: false, nullable: false, api_name: "defaultValueEntry"

      field :actions, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemTextActions }, optional: true, nullable: false

      field :widgets, -> { Internal::Types::Array[CloudPDF::Types::DocFormsGet200ResponseFieldsItemTextWidgetsItem] }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false

      field :default_value, -> { String }, optional: false, nullable: false, api_name: "defaultValue"

      field :max_length, -> { Integer }, optional: false, nullable: true, api_name: "maxLength"

      field :multiline, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :password, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :comb, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
