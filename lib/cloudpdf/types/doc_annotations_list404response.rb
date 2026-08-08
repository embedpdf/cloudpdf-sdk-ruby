# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList404Response < Internal::Types::Model
      field :name, -> { Cloudpdf::Types::DocAnnotationsList404ResponseName }, optional: false, nullable: false

      field :code, -> { Cloudpdf::Types::DocAnnotationsList404ResponseCode }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :details, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
