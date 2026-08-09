# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItemCheckboxActionsKeystroke < Internal::Types::Model
      field :root, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemCheckboxActionsKeystrokeRoot }, optional: false, nullable: true

      field :incomplete, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :warning_flags, -> { Integer }, optional: false, nullable: false, api_name: "warningFlags"

      field :warnings, -> { Internal::Types::Array[CloudPDF::Types::DocFormsGet200ResponseFieldsItemCheckboxActionsKeystrokeWarningsItem] }, optional: false, nullable: false
    end
  end
end
