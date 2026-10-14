# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpFormsUpdate < Internal::Types::Model
      field :field, -> { CloudPDF::Types::FormFieldRef }, optional: false, nullable: false

      field :patch, -> { CloudPDF::Types::FormFieldPatch }, optional: false, nullable: false

      field :expect, -> { CloudPDF::Types::FormFieldPatch }, optional: true, nullable: false
    end
  end
end
