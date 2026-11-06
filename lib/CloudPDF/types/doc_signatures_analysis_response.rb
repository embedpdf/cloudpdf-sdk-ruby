# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesAnalysisResponse < Internal::Types::Model
      field :mode, -> { CloudPDF::Types::DocSignaturesAnalysisResponseMode }, optional: false, nullable: false

      field :policy_version, -> { Integer }, optional: false, nullable: false, api_name: "policyVersion"

      field :basis, -> { CloudPDF::Types::DocSignaturesAnalysisResponseBasis }, optional: false, nullable: false

      field :since, -> { CloudPDF::Types::DocSignaturesAnalysisResponseSince }, optional: false, nullable: false

      field :until_, -> { CloudPDF::Types::DocSignaturesAnalysisResponseUntil }, optional: false, nullable: false, api_name: "until"

      field :restrictions, -> { Internal::Types::Array[CloudPDF::Types::DocSignaturesAnalysisResponseRestrictionsItem] }, optional: false, nullable: false

      field :current, -> { CloudPDF::Types::DocSignaturesAnalysisResponseCurrent }, optional: false, nullable: false

      field :later, -> { CloudPDF::Types::DocSignaturesAnalysisResponseLater }, optional: false, nullable: false

      field :verdict, -> { CloudPDF::Types::DocSignaturesAnalysisResponseVerdict }, optional: false, nullable: false

      field :steps, -> { Internal::Types::Array[Object] }, optional: false, nullable: false
    end
  end
end
