# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItemUnknownFlags < Internal::Types::Model
      field :read_only, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "readOnly"

      field :required, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :no_export, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "noExport"

      field :raw, -> { Integer }, optional: false, nullable: false
    end
  end
end
