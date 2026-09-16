# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesAnalysis200ResponseBasisVersion < Internal::Types::Model
      field :sha256, -> { String }, optional: false, nullable: false

      field :byte_length, -> { Integer }, optional: false, nullable: false, api_name: "byteLength"
    end
  end
end
