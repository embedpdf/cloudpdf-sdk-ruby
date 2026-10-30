# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsVisitorsList200ResponseVisitorsItem < Internal::Types::Model
      field :visitor_id, -> { String }, optional: false, nullable: false, api_name: "visitorId"

      field :answers, -> { CloudPDF::Types::GrantsVisitorsList200ResponseVisitorsItemAnswers }, optional: false, nullable: false

      field :email_verified, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "emailVerified"

      field :consented_at, -> { Integer }, optional: false, nullable: true, api_name: "consentedAt"

      field :first_seen_at, -> { Integer }, optional: false, nullable: false, api_name: "firstSeenAt"

      field :last_seen_at, -> { Integer }, optional: false, nullable: false, api_name: "lastSeenAt"

      field :layer, -> { CloudPDF::Types::GrantsVisitorsList200ResponseVisitorsItemLayer }, optional: false, nullable: true
    end
  end
end
