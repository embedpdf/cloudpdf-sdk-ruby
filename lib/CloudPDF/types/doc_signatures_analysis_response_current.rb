# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesAnalysisResponseCurrent < Internal::Types::Model
      field :verdict, -> { CloudPDF::Types::DocSignaturesAnalysisResponseCurrentVerdict }, optional: false, nullable: false

      field :complete, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :primary, -> { CloudPDF::Types::DocSignaturesAnalysisResponseCurrentPrimary }, optional: true, nullable: false

      field :findings, -> { Internal::Types::Array[CloudPDF::Types::DocSignaturesAnalysisResponseCurrentFindingsItem] }, optional: false, nullable: false

      field :method_, -> { CloudPDF::Types::DocSignaturesAnalysisResponseCurrentMethod }, optional: false, nullable: false, api_name: "method"
    end
  end
end
