# frozen_string_literal: true

module CloudPDF
  module Types
    class FieldActionsPatch < Internal::Types::Model
      field :keystroke, -> { CloudPDF::Types::FieldScriptWrite }, optional: true, nullable: false

      field :format, -> { CloudPDF::Types::FieldScriptWrite }, optional: true, nullable: false

      field :validate, -> { CloudPDF::Types::FieldScriptWrite }, optional: true, nullable: false

      field :calculate, -> { CloudPDF::Types::FieldScriptWrite }, optional: true, nullable: false
    end
  end
end
