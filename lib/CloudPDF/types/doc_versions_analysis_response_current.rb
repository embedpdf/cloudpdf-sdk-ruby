# frozen_string_literal: true

module CloudPDF
  module Types
    class DocVersionsAnalysisResponseCurrent < Internal::Types::Model
      field :verdict, -> { CloudPDF::Types::DocVersionsAnalysisResponseCurrentVerdict }, optional: false, nullable: false

      field :complete, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :primary, -> { CloudPDF::Types::DocVersionsAnalysisResponseCurrentPrimary }, optional: true, nullable: false

      field :findings, -> { Internal::Types::Array[CloudPDF::Types::DocVersionsAnalysisResponseCurrentFindingsItem] }, optional: false, nullable: false

      field :method_, -> { CloudPDF::Types::DocVersionsAnalysisResponseCurrentMethod }, optional: false, nullable: false, api_name: "method"
    end
  end
end
