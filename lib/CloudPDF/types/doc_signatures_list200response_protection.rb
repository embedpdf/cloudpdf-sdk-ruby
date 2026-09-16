# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesList200ResponseProtection < Internal::Types::Model
      field :enforced, -> { CloudPDF::Types::DocSignaturesList200ResponseProtectionEnforced }, optional: false, nullable: true

      field :judged, -> { CloudPDF::Types::DocSignaturesList200ResponseProtectionJudged }, optional: false, nullable: true

      field :certification, -> { CloudPDF::Types::DocSignaturesList200ResponseProtectionCertification }, optional: false, nullable: true

      field :field_locks, -> { Internal::Types::Array[CloudPDF::Types::DocSignaturesList200ResponseProtectionFieldLocksItem] }, optional: false, nullable: false, api_name: "fieldLocks"

      field :policy_version, -> { Integer }, optional: false, nullable: false, api_name: "policyVersion"
    end
  end
end
