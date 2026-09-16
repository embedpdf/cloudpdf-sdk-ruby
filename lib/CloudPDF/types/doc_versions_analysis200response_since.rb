# frozen_string_literal: true

module CloudPDF
  module Types
    class DocVersionsAnalysis200ResponseSince < Internal::Types::Model
      field :revision_index, -> { Integer }, optional: false, nullable: false, api_name: "revisionIndex"

      field :signature_index, -> { Integer }, optional: false, nullable: true, api_name: "signatureIndex"
    end
  end
end
