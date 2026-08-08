# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsGet200ResponseFieldsItemCombobox < Internal::Types::Model
      field :ref, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemComboboxRef }, optional: false, nullable: false

      field :field_object_number, -> { Integer }, optional: false, nullable: false, api_name: "fieldObjectNumber"

      field :name, -> { String }, optional: false, nullable: false

      field :origin, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemComboboxOrigin }, optional: false, nullable: false

      field :flags, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemComboboxFlags }, optional: false, nullable: false

      field :alternate_name, -> { String }, optional: false, nullable: true, api_name: "alternateName"

      field :mapping_name, -> { String }, optional: false, nullable: true, api_name: "mappingName"

      field :value_entry, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemComboboxValueEntry }, optional: false, nullable: false, api_name: "valueEntry"

      field :default_value_entry, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemComboboxDefaultValueEntry }, optional: false, nullable: false, api_name: "defaultValueEntry"

      field :actions, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemComboboxActions }, optional: true, nullable: false

      field :widgets, -> { Internal::Types::Array[Cloudpdf::Types::DocFormsGet200ResponseFieldsItemComboboxWidgetsItem] }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false

      field :default_value, -> { String }, optional: false, nullable: false, api_name: "defaultValue"

      field :edit, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :options, -> { Internal::Types::Array[Cloudpdf::Types::DocFormsGet200ResponseFieldsItemComboboxOptionsItem] }, optional: false, nullable: false
    end
  end
end
