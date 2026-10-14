# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldListboxDefaultValueEntryScalar < Internal::Types::Model
      field :value, -> { String }, optional: false, nullable: false
    end
  end
end
