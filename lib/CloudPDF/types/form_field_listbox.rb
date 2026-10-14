# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldListbox < Internal::Types::Model
      field :ref, -> { CloudPDF::Types::FormFieldRef }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :origin, -> { CloudPDF::Types::FormFieldListboxOrigin }, optional: false, nullable: false

      field :read_only, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "readOnly"

      field :required, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :no_export, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "noExport"

      field :alternate_name, -> { String }, optional: false, nullable: true, api_name: "alternateName"

      field :mapping_name, -> { String }, optional: false, nullable: true, api_name: "mappingName"

      field :value_entry, -> { CloudPDF::Types::FormFieldListboxValueEntry }, optional: false, nullable: false, api_name: "valueEntry"

      field :default_value_entry, -> { CloudPDF::Types::FormFieldListboxDefaultValueEntry }, optional: false, nullable: false, api_name: "defaultValueEntry"

      field :actions, -> { CloudPDF::Types::PdfFieldActions }, optional: true, nullable: false

      field :group_id, -> { String }, optional: false, nullable: true, api_name: "groupId"

      field :created_by, -> { String }, optional: false, nullable: true, api_name: "createdBy"

      field :created_at, -> { String }, optional: false, nullable: true, api_name: "createdAt"

      field :filled_by, -> { String }, optional: false, nullable: true, api_name: "filledBy"

      field :filled_by_name, -> { String }, optional: false, nullable: true, api_name: "filledByName"

      field :filled_at, -> { String }, optional: false, nullable: true, api_name: "filledAt"

      field :imported_by, -> { String }, optional: false, nullable: true, api_name: "importedBy"

      field :widgets, -> { Internal::Types::Array[CloudPDF::Types::FormWidget] }, optional: false, nullable: false

      field :selected_values, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "selectedValues"

      field :default_value, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "defaultValue"

      field :multi_select, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "multiSelect"

      field :options, -> { Internal::Types::Array[CloudPDF::Types::FormFieldListboxOptionsItem] }, optional: false, nullable: false

      field :top_index, -> { Integer }, optional: false, nullable: false, api_name: "topIndex"
    end
  end
end
