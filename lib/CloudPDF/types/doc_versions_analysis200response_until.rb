# frozen_string_literal: true

module CloudPDF
  module Types
    class DocVersionsAnalysis200ResponseUntil < Internal::Types::Model
      field :revision_index, -> { Integer }, optional: false, nullable: false, api_name: "revisionIndex"
    end
  end
end
