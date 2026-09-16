# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesAbort200Response < Internal::Types::Model
      field :status, -> { CloudPDF::Types::DocSignaturesAbort200ResponseStatus }, optional: false, nullable: false
    end
  end
end
