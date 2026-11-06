# frozen_string_literal: true

module CloudPDF
  module Types
    class DocVersionsAnalysisResponseUntil < Internal::Types::Model
      field :revision_index, -> { Integer }, optional: false, nullable: false, api_name: "revisionIndex"
    end
  end
end
