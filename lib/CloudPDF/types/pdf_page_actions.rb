# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfPageActions < Internal::Types::Model
      field :open, -> { CloudPDF::Types::PdfActionTree }, optional: true, nullable: false

      field :close, -> { CloudPDF::Types::PdfActionTree }, optional: true, nullable: false
    end
  end
end
