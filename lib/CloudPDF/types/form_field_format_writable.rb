# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldFormatWritable < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::FormFieldFormatWritableDate }, key: "DATE"

      member -> { CloudPDF::Types::FormFieldFormatWritableTime }, key: "TIME"
    end
  end
end
