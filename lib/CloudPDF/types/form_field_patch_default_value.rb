# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldPatchDefaultValue < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      member -> { String }

      member -> { Internal::Types::Array[String] }
    end
  end
end
