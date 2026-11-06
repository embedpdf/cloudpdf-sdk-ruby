# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsVisitorsListResponseVisitorsItem < Internal::Types::Model
      field :visitor_id, -> { String }, optional: false, nullable: false, api_name: "visitorId"

      field :answers, -> { CloudPDF::Types::GrantsVisitorsListResponseVisitorsItemAnswers }, optional: false, nullable: false

      field :email_verified, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "emailVerified"

      field :consented_at, -> { String }, optional: false, nullable: true, api_name: "consentedAt"

      field :first_seen_at, -> { String }, optional: false, nullable: false, api_name: "firstSeenAt"

      field :last_seen_at, -> { String }, optional: false, nullable: false, api_name: "lastSeenAt"

      field :layer, -> { CloudPDF::Types::GrantsVisitorsListResponseVisitorsItemLayer }, optional: false, nullable: true
    end
  end
end
