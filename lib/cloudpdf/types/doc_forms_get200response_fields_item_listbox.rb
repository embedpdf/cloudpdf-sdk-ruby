# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsGet200ResponseFieldsItemListbox < Internal::Types::Model
      field :ref, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemListboxRef }, optional: false, nullable: false

      field :field_object_number, -> { Integer }, optional: false, nullable: false, api_name: "fieldObjectNumber"

      field :name, -> { String }, optional: false, nullable: false

      field :origin, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemListboxOrigin }, optional: false, nullable: false

      field :flags, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemListboxFlags }, optional: false, nullable: false

      field :alternate_name, -> { String }, optional: false, nullable: true, api_name: "alternateName"

      field :mapping_name, -> { String }, optional: false, nullable: true, api_name: "mappingName"

      field :value_entry, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemListboxValueEntry }, optional: false, nullable: false, api_name: "valueEntry"

      field :default_value_entry, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemListboxDefaultValueEntry }, optional: false, nullable: false, api_name: "defaultValueEntry"

      field :actions, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemListboxActions }, optional: true, nullable: false

      field :widgets, -> { Internal::Types::Array[Cloudpdf::Types::DocFormsGet200ResponseFieldsItemListboxWidgetsItem] }, optional: false, nullable: false

      field :selected_values, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "selectedValues"

      field :multi_select, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "multiSelect"

      field :options, -> { Internal::Types::Array[Cloudpdf::Types::DocFormsGet200ResponseFieldsItemListboxOptionsItem] }, optional: false, nullable: false
    end
  end
end
