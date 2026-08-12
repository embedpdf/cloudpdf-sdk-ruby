# frozen_string_literal: true

module CloudPDF
  module Types
    class TenantsUsage200ResponseMetrics < Internal::Types::Model
      field :pdf_views, -> { Integer }, optional: false, nullable: false, api_name: "pdf.views"

      field :pdf_uploads, -> { Integer }, optional: false, nullable: false, api_name: "pdf.uploads"

      field :storage_bytes, -> { Integer }, optional: false, nullable: false, api_name: "storage.bytes"
    end
  end
end
