# frozen_string_literal: true

module CloudPDF
  module Types
    class DocVersionsAnalysisResponse < Internal::Types::Model
      field :mode, -> { CloudPDF::Types::DocVersionsAnalysisResponseMode }, optional: false, nullable: false

      field :policy_version, -> { Integer }, optional: false, nullable: false, api_name: "policyVersion"

      field :basis, -> { CloudPDF::Types::DocVersionsAnalysisResponseBasis }, optional: false, nullable: false

      field :since, -> { CloudPDF::Types::DocVersionsAnalysisResponseSince }, optional: false, nullable: false

      field :until_, -> { CloudPDF::Types::DocVersionsAnalysisResponseUntil }, optional: false, nullable: false, api_name: "until"

      field :restrictions, -> { Internal::Types::Array[CloudPDF::Types::DocVersionsAnalysisResponseRestrictionsItem] }, optional: false, nullable: false

      field :current, -> { CloudPDF::Types::DocVersionsAnalysisResponseCurrent }, optional: false, nullable: false

      field :later, -> { CloudPDF::Types::DocVersionsAnalysisResponseLater }, optional: false, nullable: false

      field :verdict, -> { CloudPDF::Types::DocVersionsAnalysisResponseVerdict }, optional: false, nullable: false

      field :steps, -> { Internal::Types::Array[Object] }, optional: false, nullable: false
    end
  end
end
