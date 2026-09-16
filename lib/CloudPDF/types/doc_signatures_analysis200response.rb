# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesAnalysis200Response < Internal::Types::Model
      field :mode, -> { CloudPDF::Types::DocSignaturesAnalysis200ResponseMode }, optional: false, nullable: false

      field :policy_version, -> { Integer }, optional: false, nullable: false, api_name: "policyVersion"

      field :basis, -> { CloudPDF::Types::DocSignaturesAnalysis200ResponseBasis }, optional: false, nullable: false

      field :since, -> { CloudPDF::Types::DocSignaturesAnalysis200ResponseSince }, optional: false, nullable: false

      field :until_, -> { CloudPDF::Types::DocSignaturesAnalysis200ResponseUntil }, optional: false, nullable: false, api_name: "until"

      field :restrictions, -> { Internal::Types::Array[CloudPDF::Types::DocSignaturesAnalysis200ResponseRestrictionsItem] }, optional: false, nullable: false

      field :current, -> { CloudPDF::Types::DocSignaturesAnalysis200ResponseCurrent }, optional: false, nullable: false

      field :later, -> { CloudPDF::Types::DocSignaturesAnalysis200ResponseLater }, optional: false, nullable: false

      field :verdict, -> { CloudPDF::Types::DocSignaturesAnalysis200ResponseVerdict }, optional: false, nullable: false

      field :steps, -> { Internal::Types::Array[Object] }, optional: false, nullable: false
    end
  end
end
