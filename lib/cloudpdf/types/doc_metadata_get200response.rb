# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocMetadataGet200Response < Internal::Types::Model
      field :title, -> { String }, optional: false, nullable: true

      field :author, -> { String }, optional: false, nullable: true

      field :subject, -> { String }, optional: false, nullable: true

      field :keywords, -> { String }, optional: false, nullable: true

      field :producer, -> { String }, optional: false, nullable: true

      field :creator, -> { String }, optional: false, nullable: true

      field :created, -> { String }, optional: false, nullable: true

      field :modified, -> { String }, optional: false, nullable: true

      field :trapped, -> { Cloudpdf::Types::DocMetadataGet200ResponseTrapped }, optional: false, nullable: false

      field :custom, -> { Internal::Types::Hash[String, String] }, optional: false, nullable: false
    end
  end
end
