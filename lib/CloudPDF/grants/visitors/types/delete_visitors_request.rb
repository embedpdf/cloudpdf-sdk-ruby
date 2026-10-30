# frozen_string_literal: true

module CloudPDF
  module Grants
    module Visitors
      module Types
        class DeleteVisitorsRequest < Internal::Types::Model
          field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

          field :grant_id, -> { String }, optional: false, nullable: false, api_name: "grantId"

          field :visitor_id, -> { String }, optional: false, nullable: false, api_name: "visitorId"
        end
      end
    end
  end
end
