# frozen_string_literal: true

module CloudPDF
  module Shares
    module Types
      class DeleteSharesRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

        field :share_id, -> { String }, optional: false, nullable: false, api_name: "shareId"
      end
    end
  end
end
