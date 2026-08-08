# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsGet200ResponseFieldsItemUnknown < Internal::Types::Model
      field :ref, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemUnknownRef }, optional: false, nullable: false

      field :field_object_number, -> { Integer }, optional: false, nullable: false, api_name: "fieldObjectNumber"

      field :name, -> { String }, optional: false, nullable: false

      field :origin, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemUnknownOrigin }, optional: false, nullable: false

      field :flags, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemUnknownFlags }, optional: false, nullable: false

      field :alternate_name, -> { String }, optional: false, nullable: true, api_name: "alternateName"

      field :mapping_name, -> { String }, optional: false, nullable: true, api_name: "mappingName"

      field :value_entry, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemUnknownValueEntry }, optional: false, nullable: false, api_name: "valueEntry"

      field :default_value_entry, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemUnknownDefaultValueEntry }, optional: false, nullable: false, api_name: "defaultValueEntry"

      field :actions, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemUnknownActions }, optional: true, nullable: false

      field :widgets, -> { Internal::Types::Array[Cloudpdf::Types::DocFormsGet200ResponseFieldsItemUnknownWidgetsItem] }, optional: false, nullable: false

      field :raw_value, -> { String }, optional: false, nullable: false, api_name: "rawValue"
    end
  end
end
