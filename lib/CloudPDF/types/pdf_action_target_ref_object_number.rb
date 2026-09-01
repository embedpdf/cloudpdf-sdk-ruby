# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfActionTargetRefObjectNumber < Internal::Types::Model
      field :object_number, -> { Integer }, optional: false, nullable: false, api_name: "objectNumber"
    end
  end
end
