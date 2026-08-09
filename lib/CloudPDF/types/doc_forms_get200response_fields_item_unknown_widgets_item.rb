# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItemUnknownWidgetsItem < Internal::Types::Model
      field :annot_object_number, -> { Integer }, optional: false, nullable: false, api_name: "annotObjectNumber"

      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"
    end
  end
end
