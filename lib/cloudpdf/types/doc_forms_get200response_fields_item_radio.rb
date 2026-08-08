# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsGet200ResponseFieldsItemRadio < Internal::Types::Model
      field :ref, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemRadioRef }, optional: false, nullable: false

      field :field_object_number, -> { Integer }, optional: false, nullable: false, api_name: "fieldObjectNumber"

      field :name, -> { String }, optional: false, nullable: false

      field :origin, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemRadioOrigin }, optional: false, nullable: false

      field :flags, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemRadioFlags }, optional: false, nullable: false

      field :alternate_name, -> { String }, optional: false, nullable: true, api_name: "alternateName"

      field :mapping_name, -> { String }, optional: false, nullable: true, api_name: "mappingName"

      field :value_entry, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemRadioValueEntry }, optional: false, nullable: false, api_name: "valueEntry"

      field :default_value_entry, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemRadioDefaultValueEntry }, optional: false, nullable: false, api_name: "defaultValueEntry"

      field :actions, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemRadioActions }, optional: true, nullable: false

      field :widgets, -> { Internal::Types::Array[Cloudpdf::Types::DocFormsGet200ResponseFieldsItemRadioWidgetsItem] }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false

      field :radios_in_unison, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "radiosInUnison"

      field :no_toggle_to_off, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "noToggleToOff"
    end
  end
end
