# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpFormsSetDisplay < Internal::Types::Model
      field :field, -> { CloudPDF::Types::FormFieldRef }, optional: false, nullable: false

      field :display, -> { CloudPDF::Types::ChangeOpFormsSetDisplayDisplay }, optional: false, nullable: false
    end
  end
end
