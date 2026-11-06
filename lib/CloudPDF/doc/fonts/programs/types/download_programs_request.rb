# frozen_string_literal: true

module CloudPDF
  module Doc
    module Fonts
      module Programs
        module Types
          class DownloadProgramsRequest < Internal::Types::Model
            field :doc_id, -> { String }, optional: false, nullable: false, api_name: "docId"

            field :layer_name, -> { String }, optional: false, nullable: false, api_name: "layerName"

            field :display_sha256, -> { String }, optional: false, nullable: false, api_name: "displaySha256"

            field :document_password, -> { String }, optional: true, nullable: false, api_name: "X-Document-Password"
          end
        end
      end
    end
  end
end
