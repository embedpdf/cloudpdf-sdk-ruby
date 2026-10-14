# frozen_string_literal: true

module CloudPDF
  module Types
    class FieldScriptWrite < Internal::Types::Model
      field :type, -> { CloudPDF::Types::FieldScriptWriteType }, optional: false, nullable: false

      field :script, -> { String }, optional: false, nullable: false

      field :next_, -> { Internal::Types::Array[Object] }, optional: true, nullable: false, api_name: "next"
    end
  end
end
