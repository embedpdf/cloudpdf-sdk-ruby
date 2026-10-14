# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsUpdateWidget200ResponseAppearance < Internal::Types::Model
      field :action, -> { CloudPDF::Types::DocFormsUpdateWidget200ResponseAppearanceAction }, optional: false, nullable: false

      field :changed, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
