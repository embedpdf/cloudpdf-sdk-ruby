# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfDestinationFitB < Internal::Types::Model
      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"
    end
  end
end
