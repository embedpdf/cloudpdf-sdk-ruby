# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesComplete200ResponseProtectionCertification < Internal::Types::Model
      field :signature_index, -> { Integer }, optional: false, nullable: false, api_name: "signatureIndex"

      field :permission, -> { Integer }, optional: false, nullable: true
    end
  end
end
