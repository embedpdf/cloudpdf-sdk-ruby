# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocRenderResponse < Internal::Types::Model
      field :name, -> { Cloudpdf::Types::DocRenderResponseName }, optional: false, nullable: false

      field :code, -> { Cloudpdf::Types::DocRenderResponseCode }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :details, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
