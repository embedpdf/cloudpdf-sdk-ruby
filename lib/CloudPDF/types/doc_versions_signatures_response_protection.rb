# frozen_string_literal: true

module CloudPDF
  module Types
    class DocVersionsSignaturesResponseProtection < Internal::Types::Model
      field :enforced, -> { CloudPDF::Types::DocVersionsSignaturesResponseProtectionEnforced }, optional: false, nullable: true

      field :judged, -> { CloudPDF::Types::DocVersionsSignaturesResponseProtectionJudged }, optional: false, nullable: true

      field :certification, -> { CloudPDF::Types::DocVersionsSignaturesResponseProtectionCertification }, optional: false, nullable: true

      field :field_locks, -> { Internal::Types::Array[CloudPDF::Types::DocVersionsSignaturesResponseProtectionFieldLocksItem] }, optional: false, nullable: false, api_name: "fieldLocks"

      field :policy_version, -> { Integer }, optional: false, nullable: false, api_name: "policyVersion"
    end
  end
end
