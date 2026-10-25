# frozen_string_literal: true

module CloudPDF
  module Types
    class AttachmentFileBase < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :mime_type, -> { String }, optional: true, nullable: false, api_name: "mimeType"

      field :description, -> { String }, optional: true, nullable: false
    end
  end
end
