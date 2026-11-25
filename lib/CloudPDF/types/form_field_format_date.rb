# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldFormatDate < Internal::Types::Model
      field :pattern, -> { String }, optional: false, nullable: false
    end
  end
end
