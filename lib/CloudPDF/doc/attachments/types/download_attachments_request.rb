# frozen_string_literal: true

module CloudPDF
  module Doc
    module Attachments
      module Types
        class DownloadAttachmentsRequest < Internal::Types::Model
          field :doc_id, -> { String }, optional: false, nullable: false, api_name: "docId"

          field :layer_name, -> { String }, optional: false, nullable: false, api_name: "layerName"

          field :file_key, -> { String }, optional: false, nullable: false, api_name: "fileKey"

          field :document_password, -> { String }, optional: true, nullable: false, api_name: "X-Document-Password"
        end
      end
    end
  end
end
