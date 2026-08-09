# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItemUnknownActionsFormat < Internal::Types::Model
      field :root, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemUnknownActionsFormatRoot }, optional: false, nullable: true

      field :incomplete, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :warning_flags, -> { Integer }, optional: false, nullable: false, api_name: "warningFlags"

      field :warnings, -> { Internal::Types::Array[CloudPDF::Types::DocFormsGet200ResponseFieldsItemUnknownActionsFormatWarningsItem] }, optional: false, nullable: false
    end
  end
end
