# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfFieldActions < Internal::Types::Model
      field :keystroke, -> { CloudPDF::Types::PdfActionTree }, optional: true, nullable: false

      field :format, -> { CloudPDF::Types::PdfActionTree }, optional: true, nullable: false

      field :validate, -> { CloudPDF::Types::PdfActionTree }, optional: true, nullable: false

      field :calculate, -> { CloudPDF::Types::PdfActionTree }, optional: true, nullable: false
    end
  end
end
