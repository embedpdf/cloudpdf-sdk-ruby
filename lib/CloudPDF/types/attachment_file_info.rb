# frozen_string_literal: true

module CloudPDF
  module Types
    class AttachmentFileInfo < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :mime_type, -> { String }, optional: false, nullable: true, api_name: "mimeType"

      field :description, -> { String }, optional: false, nullable: true

      field :size, -> { Integer }, optional: false, nullable: true

      field :checksum, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: true, api_name: "createdAt"

      field :modified_at, -> { String }, optional: false, nullable: true, api_name: "modifiedAt"
    end
  end
end
