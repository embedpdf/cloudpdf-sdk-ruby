# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsGet200ResponseFieldsItemRadioFlags < Internal::Types::Model
      field :read_only, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "readOnly"

      field :required, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :no_export, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "noExport"

      field :raw, -> { Integer }, optional: false, nullable: false
    end
  end
end
