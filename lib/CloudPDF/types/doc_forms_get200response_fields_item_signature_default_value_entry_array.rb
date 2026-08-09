# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItemSignatureDefaultValueEntryArray < Internal::Types::Model
      field :values, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
