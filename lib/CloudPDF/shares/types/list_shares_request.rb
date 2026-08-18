# frozen_string_literal: true

module CloudPDF
  module Shares
    module Types
      class ListSharesRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

        field :limit, -> { Integer }, optional: true, nullable: false

        field :cursor, -> { String }, optional: true, nullable: false

        field :doc_id, -> { String }, optional: true, nullable: false, api_name: "docId"
      end
    end
  end
end
