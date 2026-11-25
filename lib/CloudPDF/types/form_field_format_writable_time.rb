# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldFormatWritableTime < Internal::Types::Model
      field :pattern, -> { String }, optional: false, nullable: false
    end
  end
end
