# frozen_string_literal: true

module CloudPDF
  module Documents
    module Layers
      module Types
        class ListLayersRequest < Internal::Types::Model
          field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

          field :doc_id, -> { String }, optional: false, nullable: false, api_name: "docId"

          field :limit, -> { Integer }, optional: true, nullable: false

          field :cursor, -> { String }, optional: true, nullable: false

          field :grant_id, -> { String }, optional: true, nullable: false, api_name: "grantId"
        end
      end
    end
  end
end
