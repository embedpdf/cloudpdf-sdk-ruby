# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesCancel200Response < Internal::Types::Model
      field :status, -> { CloudPDF::Types::DocSignaturesCancel200ResponseStatus }, optional: false, nullable: false
    end
  end
end
