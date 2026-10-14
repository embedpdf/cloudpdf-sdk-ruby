# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpFormsSetSignatureAppearance < Internal::Types::Model
      field :field, -> { CloudPDF::Types::FormFieldRef }, optional: false, nullable: false

      field :resources, -> { CloudPDF::Types::ChangeOpFormsSetSignatureAppearanceResources }, optional: false, nullable: false
    end
  end
end
