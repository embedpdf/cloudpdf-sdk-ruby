# frozen_string_literal: true

module CloudPDF
  module Documents
    module Types
      # The caller supplies the authority: a presigned S3/GCS/Azure/R2/MinIO GET, or any HTTPS endpoint the deployment
      # import policy allows. The URL is a capability — treat it as a secret. CloudPDF never echoes its query string
      # back in errors, logs, or stored failure reasons.
      class DocumentsImportFromRequestSourceURL < Internal::Types::Model
        field :url, -> { String }, optional: false, nullable: false
      end
    end
  end
end
