# frozen_string_literal: true

module CloudPDF
  module Types
    class DocVersionsSignatures200ResponseProtection < Internal::Types::Model
      field :enforced, -> { CloudPDF::Types::DocVersionsSignatures200ResponseProtectionEnforced }, optional: false, nullable: true

      field :judged, -> { CloudPDF::Types::DocVersionsSignatures200ResponseProtectionJudged }, optional: false, nullable: true

      field :certification, -> { CloudPDF::Types::DocVersionsSignatures200ResponseProtectionCertification }, optional: false, nullable: true

      field :field_locks, -> { Internal::Types::Array[CloudPDF::Types::DocVersionsSignatures200ResponseProtectionFieldLocksItem] }, optional: false, nullable: false, api_name: "fieldLocks"

      field :policy_version, -> { Integer }, optional: false, nullable: false, api_name: "policyVersion"
    end
  end
end
