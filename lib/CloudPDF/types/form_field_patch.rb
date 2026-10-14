# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldPatch < Internal::Types::Model
      field :name, -> { String }, optional: true, nullable: false

      field :read_only, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "readOnly"

      field :required, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :no_export, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "noExport"

      field :alternate_name, -> { String }, optional: true, nullable: false, api_name: "alternateName"

      field :mapping_name, -> { String }, optional: true, nullable: false, api_name: "mappingName"

      field :group_id, -> { String }, optional: true, nullable: false, api_name: "groupId"

      field :actions, -> { CloudPDF::Types::FieldActionsPatch }, optional: true, nullable: false

      field :family, -> { CloudPDF::Types::FormFieldPatchFamily }, optional: true, nullable: false

      field :default_value, -> { CloudPDF::Types::FormFieldPatchDefaultValue }, optional: true, nullable: false, api_name: "defaultValue"

      field :max_length, -> { Integer }, optional: true, nullable: false, api_name: "maxLength"

      field :multiline, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :password, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :comb, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :radios_in_unison, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "radiosInUnison"

      field :no_toggle_to_off, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "noToggleToOff"

      field :edit, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :multi_select, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "multiSelect"

      field :options, -> { Internal::Types::Array[CloudPDF::Types::FormFieldPatchOptionsItem] }, optional: true, nullable: false
    end
  end
end
