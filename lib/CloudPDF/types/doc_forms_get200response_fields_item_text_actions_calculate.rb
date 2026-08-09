# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItemTextActionsCalculate < Internal::Types::Model
      field :root, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemTextActionsCalculateRoot }, optional: false, nullable: true

      field :incomplete, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :warning_flags, -> { Integer }, optional: false, nullable: false, api_name: "warningFlags"

      field :warnings, -> { Internal::Types::Array[CloudPDF::Types::DocFormsGet200ResponseFieldsItemTextActionsCalculateWarningsItem] }, optional: false, nullable: false
    end
  end
end
