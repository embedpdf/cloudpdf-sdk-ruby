# frozen_string_literal: true

module CloudPDF
  module Types
    class DocManifest200ResponseProtection < Internal::Types::Model
      field :enforced, -> { CloudPDF::Types::DocManifest200ResponseProtectionEnforced }, optional: false, nullable: true

      field :judged, -> { CloudPDF::Types::DocManifest200ResponseProtectionJudged }, optional: false, nullable: true

      field :certification, -> { CloudPDF::Types::DocManifest200ResponseProtectionCertification }, optional: false, nullable: true

      field :field_locks, -> { Internal::Types::Array[CloudPDF::Types::DocManifest200ResponseProtectionFieldLocksItem] }, optional: false, nullable: false, api_name: "fieldLocks"

      field :policy_version, -> { Integer }, optional: false, nullable: false, api_name: "policyVersion"
    end
  end
end
