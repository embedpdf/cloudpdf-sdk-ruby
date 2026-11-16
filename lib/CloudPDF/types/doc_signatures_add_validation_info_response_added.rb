# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesAddValidationInfoResponseAdded < Internal::Types::Model
      field :certificates, -> { Integer }, optional: false, nullable: false

      field :ocsp_responses, -> { Integer }, optional: false, nullable: false, api_name: "ocspResponses"

      field :crls, -> { Integer }, optional: false, nullable: false
    end
  end
end
