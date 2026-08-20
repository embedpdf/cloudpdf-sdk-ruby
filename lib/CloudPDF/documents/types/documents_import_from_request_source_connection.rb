# frozen_string_literal: true

module CloudPDF
  module Documents
    module Types
      class DocumentsImportFromRequestSourceConnection < Internal::Types::Model
        field :connection_id, -> { String }, optional: false, nullable: false, api_name: "connectionId"

        field :key, -> { String }, optional: false, nullable: false

        field :revision, -> { String }, optional: true, nullable: false
      end
    end
  end
end
