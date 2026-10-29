# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsUpdate200Response < Internal::Types::Model
      field :document, -> { CloudPDF::Types::DocumentsUpdate200ResponseDocument }, optional: false, nullable: false
    end
  end
end
