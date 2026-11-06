# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesAnalysisResponseBasisVersion < Internal::Types::Model
      field :sha256, -> { String }, optional: false, nullable: false

      field :size_bytes, -> { Integer }, optional: false, nullable: false, api_name: "sizeBytes"
    end
  end
end
