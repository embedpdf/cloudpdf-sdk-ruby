# frozen_string_literal: true

module CloudPDF
  module Types
    class DocManifestResponseProtection < Internal::Types::Model
      field :enforced, -> { CloudPDF::Types::DocManifestResponseProtectionEnforced }, optional: false, nullable: true

      field :judged, -> { CloudPDF::Types::DocManifestResponseProtectionJudged }, optional: false, nullable: true

      field :certification, -> { CloudPDF::Types::DocManifestResponseProtectionCertification }, optional: false, nullable: true

      field :field_locks, -> { Internal::Types::Array[CloudPDF::Types::DocManifestResponseProtectionFieldLocksItem] }, optional: false, nullable: false, api_name: "fieldLocks"

      field :policy_version, -> { Integer }, optional: false, nullable: false, api_name: "policyVersion"
    end
  end
end
