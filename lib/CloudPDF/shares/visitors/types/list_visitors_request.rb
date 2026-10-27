# frozen_string_literal: true

module CloudPDF
  module Shares
    module Visitors
      module Types
        class ListVisitorsRequest < Internal::Types::Model
          field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

          field :share_id, -> { String }, optional: false, nullable: false, api_name: "shareId"

          field :limit, -> { Integer }, optional: true, nullable: false

          field :cursor, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
