# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsUpdateResponseAppearance < Internal::Types::Model
      field :action, -> { CloudPDF::Types::DocAnnotationsUpdateResponseAppearanceAction }, optional: false, nullable: false

      field :changed, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
