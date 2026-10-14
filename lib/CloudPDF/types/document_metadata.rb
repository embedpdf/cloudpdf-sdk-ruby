# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentMetadata < Internal::Types::Model
      field :title, -> { String }, optional: false, nullable: true

      field :author, -> { String }, optional: false, nullable: true

      field :subject, -> { String }, optional: false, nullable: true

      field :keywords, -> { String }, optional: false, nullable: true

      field :producer, -> { String }, optional: false, nullable: true

      field :creator, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: true, api_name: "createdAt"

      field :modified_at, -> { String }, optional: false, nullable: true, api_name: "modifiedAt"

      field :trapped, -> { CloudPDF::Types::DocumentMetadataTrapped }, optional: false, nullable: false
    end
  end
end
