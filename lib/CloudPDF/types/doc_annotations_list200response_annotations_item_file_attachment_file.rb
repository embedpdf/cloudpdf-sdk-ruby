# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemFileAttachmentFile < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :mime_type, -> { String }, optional: true, nullable: false, api_name: "mimeType"

      field :description, -> { String }, optional: true, nullable: false

      field :size, -> { Integer }, optional: true, nullable: false

      field :checksum, -> { String }, optional: true, nullable: false

      field :creation_date, -> { String }, optional: true, nullable: false, api_name: "creationDate"
    end
  end
end
