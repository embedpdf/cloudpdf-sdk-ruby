# frozen_string_literal: true

module Cloudpdf
  module Documents
    module Types
      class ListDocumentsRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

        field :limit, -> { Integer }, optional: true, nullable: false

        field :cursor, -> { String }, optional: true, nullable: false

        field :state, -> { Cloudpdf::Documents::Types::ListDocumentsRequestState }, optional: true, nullable: false
      end
    end
  end
end
