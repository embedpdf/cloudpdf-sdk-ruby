# frozen_string_literal: true

module CloudPDF
  module Types
    class DocVersionsSignatures200ResponseProtectionFieldLocksItem < Internal::Types::Model
      field :signature_index, -> { Integer }, optional: false, nullable: false, api_name: "signatureIndex"

      field :source, -> { CloudPDF::Types::DocVersionsSignatures200ResponseProtectionFieldLocksItemSource }, optional: false, nullable: false

      field :spec, -> { CloudPDF::Types::DocVersionsSignatures200ResponseProtectionFieldLocksItemSpec }, optional: false, nullable: true
    end
  end
end
