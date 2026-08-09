# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItemRadio < Internal::Types::Model
      field :ref, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemRadioRef }, optional: false, nullable: false

      field :field_object_number, -> { Integer }, optional: false, nullable: false, api_name: "fieldObjectNumber"

      field :name, -> { String }, optional: false, nullable: false

      field :origin, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemRadioOrigin }, optional: false, nullable: false

      field :flags, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemRadioFlags }, optional: false, nullable: false

      field :alternate_name, -> { String }, optional: false, nullable: true, api_name: "alternateName"

      field :mapping_name, -> { String }, optional: false, nullable: true, api_name: "mappingName"

      field :value_entry, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemRadioValueEntry }, optional: false, nullable: false, api_name: "valueEntry"

      field :default_value_entry, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemRadioDefaultValueEntry }, optional: false, nullable: false, api_name: "defaultValueEntry"

      field :actions, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemRadioActions }, optional: true, nullable: false

      field :widgets, -> { Internal::Types::Array[CloudPDF::Types::DocFormsGet200ResponseFieldsItemRadioWidgetsItem] }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false

      field :radios_in_unison, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "radiosInUnison"

      field :no_toggle_to_off, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "noToggleToOff"
    end
  end
end
