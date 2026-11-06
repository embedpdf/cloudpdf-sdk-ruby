# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesCompleteResponseProtectionFieldLocksItem < Internal::Types::Model
      field :signature_index, -> { Integer }, optional: false, nullable: false, api_name: "signatureIndex"

      field :source, -> { CloudPDF::Types::DocSignaturesCompleteResponseProtectionFieldLocksItemSource }, optional: false, nullable: false

      field :spec, -> { CloudPDF::Types::FieldLockSpec }, optional: false, nullable: false
    end
  end
end
