# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsGet200ResponseFieldsItemCheckboxActionsFormat < Internal::Types::Model
      field :root, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemCheckboxActionsFormatRoot }, optional: false, nullable: true

      field :incomplete, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :warning_flags, -> { Integer }, optional: false, nullable: false, api_name: "warningFlags"

      field :warnings, -> { Internal::Types::Array[Cloudpdf::Types::DocFormsGet200ResponseFieldsItemCheckboxActionsFormatWarningsItem] }, optional: false, nullable: false
    end
  end
end
