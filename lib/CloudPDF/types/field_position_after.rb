# frozen_string_literal: true

module CloudPDF
  module Types
    class FieldPositionAfter < Internal::Types::Model
      field :before, -> { CloudPDF::Types::FormFieldRef }, optional: true, nullable: false

      field :after, -> { CloudPDF::Types::FormFieldRef }, optional: true, nullable: false
    end
  end
end
