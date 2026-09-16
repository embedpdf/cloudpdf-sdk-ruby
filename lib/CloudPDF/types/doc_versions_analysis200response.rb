# frozen_string_literal: true

module CloudPDF
  module Types
    class DocVersionsAnalysis200Response < Internal::Types::Model
      field :mode, -> { CloudPDF::Types::DocVersionsAnalysis200ResponseMode }, optional: false, nullable: false

      field :policy_version, -> { Integer }, optional: false, nullable: false, api_name: "policyVersion"

      field :basis, -> { CloudPDF::Types::DocVersionsAnalysis200ResponseBasis }, optional: false, nullable: false

      field :since, -> { CloudPDF::Types::DocVersionsAnalysis200ResponseSince }, optional: false, nullable: false

      field :until_, -> { CloudPDF::Types::DocVersionsAnalysis200ResponseUntil }, optional: false, nullable: false, api_name: "until"

      field :restrictions, -> { Internal::Types::Array[CloudPDF::Types::DocVersionsAnalysis200ResponseRestrictionsItem] }, optional: false, nullable: false

      field :current, -> { CloudPDF::Types::DocVersionsAnalysis200ResponseCurrent }, optional: false, nullable: false

      field :later, -> { CloudPDF::Types::DocVersionsAnalysis200ResponseLater }, optional: false, nullable: false

      field :verdict, -> { CloudPDF::Types::DocVersionsAnalysis200ResponseVerdict }, optional: false, nullable: false

      field :steps, -> { Internal::Types::Array[Object] }, optional: false, nullable: false
    end
  end
end
