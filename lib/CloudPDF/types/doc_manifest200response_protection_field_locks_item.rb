# frozen_string_literal: true

module CloudPDF
  module Types
    class DocManifest200ResponseProtectionFieldLocksItem < Internal::Types::Model
      field :signature_index, -> { Integer }, optional: false, nullable: false, api_name: "signatureIndex"

      field :source, -> { CloudPDF::Types::DocManifest200ResponseProtectionFieldLocksItemSource }, optional: false, nullable: false

      field :spec, -> { CloudPDF::Types::DocManifest200ResponseProtectionFieldLocksItemSpec }, optional: false, nullable: false
    end
  end
end
