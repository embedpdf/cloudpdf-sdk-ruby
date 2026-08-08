# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsGet200ResponseFieldsItemCheckboxWidgetsItem < Internal::Types::Model
      field :annot_object_number, -> { Integer }, optional: false, nullable: false, api_name: "annotObjectNumber"

      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :on_state, -> { String }, optional: false, nullable: false, api_name: "onState"

      field :export_value, -> { String }, optional: false, nullable: false, api_name: "exportValue"

      field :checked, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
