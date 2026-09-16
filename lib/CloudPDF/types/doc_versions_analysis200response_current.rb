# frozen_string_literal: true

module CloudPDF
  module Types
    class DocVersionsAnalysis200ResponseCurrent < Internal::Types::Model
      field :verdict, -> { CloudPDF::Types::DocVersionsAnalysis200ResponseCurrentVerdict }, optional: false, nullable: false

      field :complete, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :primary, -> { CloudPDF::Types::DocVersionsAnalysis200ResponseCurrentPrimary }, optional: true, nullable: false

      field :findings, -> { Internal::Types::Array[CloudPDF::Types::DocVersionsAnalysis200ResponseCurrentFindingsItem] }, optional: false, nullable: false

      field :method_, -> { CloudPDF::Types::DocVersionsAnalysis200ResponseCurrentMethod }, optional: false, nullable: false, api_name: "method"
    end
  end
end
