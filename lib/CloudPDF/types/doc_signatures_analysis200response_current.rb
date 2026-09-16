# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesAnalysis200ResponseCurrent < Internal::Types::Model
      field :verdict, -> { CloudPDF::Types::DocSignaturesAnalysis200ResponseCurrentVerdict }, optional: false, nullable: false

      field :complete, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :primary, -> { CloudPDF::Types::DocSignaturesAnalysis200ResponseCurrentPrimary }, optional: true, nullable: false

      field :findings, -> { Internal::Types::Array[CloudPDF::Types::DocSignaturesAnalysis200ResponseCurrentFindingsItem] }, optional: false, nullable: false

      field :method_, -> { CloudPDF::Types::DocSignaturesAnalysis200ResponseCurrentMethod }, optional: false, nullable: false, api_name: "method"
    end
  end
end
