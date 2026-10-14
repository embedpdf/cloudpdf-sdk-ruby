# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpFormsSetValue < Internal::Types::Model
      field :field, -> { CloudPDF::Types::FormFieldRef }, optional: false, nullable: false

      field :value, -> { CloudPDF::Types::FormFieldValue }, optional: false, nullable: false

      field :expect, -> { CloudPDF::Types::FormFieldValue }, optional: true, nullable: false
    end
  end
end
