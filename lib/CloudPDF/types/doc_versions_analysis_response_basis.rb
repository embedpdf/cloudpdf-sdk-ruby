# frozen_string_literal: true

module CloudPDF
  module Types
    class DocVersionsAnalysisResponseBasis < Internal::Types::Model
      field :version, -> { CloudPDF::Types::DocVersionsAnalysisResponseBasisVersion }, optional: false, nullable: false

      field :edits_version, -> { Integer }, optional: false, nullable: false, api_name: "editsVersion"

      field :source, -> { CloudPDF::Types::DocVersionsAnalysisResponseBasisSource }, optional: false, nullable: false
    end
  end
end
