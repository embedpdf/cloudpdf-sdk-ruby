# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesAnalysisResponseBasis < Internal::Types::Model
      field :version, -> { CloudPDF::Types::DocSignaturesAnalysisResponseBasisVersion }, optional: false, nullable: false

      field :edits_version, -> { Integer }, optional: false, nullable: false, api_name: "editsVersion"

      field :source, -> { CloudPDF::Types::DocSignaturesAnalysisResponseBasisSource }, optional: false, nullable: false
    end
  end
end
