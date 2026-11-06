# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesListResponseProtection < Internal::Types::Model
      field :enforced, -> { CloudPDF::Types::DocSignaturesListResponseProtectionEnforced }, optional: false, nullable: true

      field :judged, -> { CloudPDF::Types::DocSignaturesListResponseProtectionJudged }, optional: false, nullable: true

      field :certification, -> { CloudPDF::Types::DocSignaturesListResponseProtectionCertification }, optional: false, nullable: true

      field :field_locks, -> { Internal::Types::Array[CloudPDF::Types::DocSignaturesListResponseProtectionFieldLocksItem] }, optional: false, nullable: false, api_name: "fieldLocks"

      field :policy_version, -> { Integer }, optional: false, nullable: false, api_name: "policyVersion"
    end
  end
end
