# frozen_string_literal: true

module CloudPDF
  module Types
    class TenantsUsageResponseMetrics < Internal::Types::Model
      field :pdf_views, -> { Integer }, optional: false, nullable: false, api_name: "pdfViews"

      field :pdf_uploads, -> { Integer }, optional: false, nullable: false, api_name: "pdfUploads"

      field :storage_bytes, -> { Integer }, optional: false, nullable: false, api_name: "storageBytes"
    end
  end
end
