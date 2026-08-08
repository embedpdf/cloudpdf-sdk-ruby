# frozen_string_literal: true

module Cloudpdf
  module Documents
    module Types
      class ThumbnailDocumentsRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
