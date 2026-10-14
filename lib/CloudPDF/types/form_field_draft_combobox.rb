# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldDraftCombobox < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :read_only, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "readOnly"

      field :required, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :no_export, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "noExport"

      field :alternate_name, -> { String }, optional: true, nullable: false, api_name: "alternateName"

      field :mapping_name, -> { String }, optional: true, nullable: false, api_name: "mappingName"

      field :group_id, -> { String }, optional: true, nullable: false, api_name: "groupId"

      field :actions, -> { CloudPDF::Types::FieldActionsPatch }, optional: true, nullable: false

      field :widgets, -> { Internal::Types::Array[CloudPDF::Types::WidgetPlacement] }, optional: true, nullable: false

      field :edit, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :options, -> { Internal::Types::Array[CloudPDF::Types::FormFieldDraftComboboxOptionsItem] }, optional: true, nullable: false

      field :default_value, -> { String }, optional: true, nullable: false, api_name: "defaultValue"
    end
  end
end
