# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItemPushbutton < Internal::Types::Model
      field :ref, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemPushbuttonRef }, optional: false, nullable: false

      field :field_object_number, -> { Integer }, optional: false, nullable: false, api_name: "fieldObjectNumber"

      field :name, -> { String }, optional: false, nullable: false

      field :origin, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemPushbuttonOrigin }, optional: false, nullable: false

      field :flags, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemPushbuttonFlags }, optional: false, nullable: false

      field :alternate_name, -> { String }, optional: false, nullable: true, api_name: "alternateName"

      field :mapping_name, -> { String }, optional: false, nullable: true, api_name: "mappingName"

      field :value_entry, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemPushbuttonValueEntry }, optional: false, nullable: false, api_name: "valueEntry"

      field :default_value_entry, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemPushbuttonDefaultValueEntry }, optional: false, nullable: false, api_name: "defaultValueEntry"

      field :actions, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemPushbuttonActions }, optional: true, nullable: false

      field :widgets, -> { Internal::Types::Array[CloudPDF::Types::DocFormsGet200ResponseFieldsItemPushbuttonWidgetsItem] }, optional: false, nullable: false
    end
  end
end
