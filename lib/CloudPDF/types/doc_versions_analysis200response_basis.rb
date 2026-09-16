# frozen_string_literal: true

module CloudPDF
  module Types
    class DocVersionsAnalysis200ResponseBasis < Internal::Types::Model
      field :version, -> { CloudPDF::Types::DocVersionsAnalysis200ResponseBasisVersion }, optional: false, nullable: false

      field :edits_version, -> { Integer }, optional: false, nullable: false, api_name: "editsVersion"

      field :source, -> { CloudPDF::Types::DocVersionsAnalysis200ResponseBasisSource }, optional: false, nullable: false
    end
  end
end
