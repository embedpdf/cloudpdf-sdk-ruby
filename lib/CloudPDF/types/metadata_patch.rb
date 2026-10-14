# frozen_string_literal: true

module CloudPDF
  module Types
    class MetadataPatch < Internal::Types::Model
      field :title, -> { String }, optional: true, nullable: false

      field :author, -> { String }, optional: true, nullable: false

      field :subject, -> { String }, optional: true, nullable: false

      field :keywords, -> { String }, optional: true, nullable: false

      field :producer, -> { String }, optional: true, nullable: false

      field :creator, -> { String }, optional: true, nullable: false

      field :created_at, -> { String }, optional: true, nullable: false, api_name: "createdAt"

      field :modified_at, -> { String }, optional: true, nullable: false, api_name: "modifiedAt"

      field :trapped, -> { CloudPDF::Types::MetadataPatchTrapped }, optional: true, nullable: false
    end
  end
end
