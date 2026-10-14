# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpFormsSetAppearanceText < Internal::Types::Model
      field :field, -> { CloudPDF::Types::FormFieldRef }, optional: false, nullable: false

      field :text, -> { String }, optional: false, nullable: false
    end
  end
end
