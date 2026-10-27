# frozen_string_literal: true

module CloudPDF
  module Shares
    module Visitors
      module Types
        class DeleteVisitorsRequest < Internal::Types::Model
          field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

          field :share_id, -> { String }, optional: false, nullable: false, api_name: "shareId"

          field :visitor_id, -> { String }, optional: false, nullable: false, api_name: "visitorId"
        end
      end
    end
  end
end
