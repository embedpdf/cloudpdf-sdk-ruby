# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsGet200Response < Internal::Types::Model
      field :document, -> { CloudPDF::Types::DocumentsGet200ResponseDocument }, optional: false, nullable: false
    end
  end
end
