# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsInitResponseCreatedUploadProxy < Internal::Types::Model
      field :url, -> { String }, optional: false, nullable: false

      field :key, -> { String }, optional: false, nullable: false
    end
  end
end
