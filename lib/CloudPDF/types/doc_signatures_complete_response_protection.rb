# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesCompleteResponseProtection < Internal::Types::Model
      field :enforced, -> { CloudPDF::Types::DocSignaturesCompleteResponseProtectionEnforced }, optional: false, nullable: true

      field :judged, -> { CloudPDF::Types::DocSignaturesCompleteResponseProtectionJudged }, optional: false, nullable: true

      field :certification, -> { CloudPDF::Types::DocSignaturesCompleteResponseProtectionCertification }, optional: false, nullable: true

      field :field_locks, -> { Internal::Types::Array[CloudPDF::Types::DocSignaturesCompleteResponseProtectionFieldLocksItem] }, optional: false, nullable: false, api_name: "fieldLocks"

      field :policy_version, -> { Integer }, optional: false, nullable: false, api_name: "policyVersion"
    end
  end
end
