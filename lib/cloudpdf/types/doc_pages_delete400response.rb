# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocPagesDelete400Response < Internal::Types::Model
      field :name, -> { Cloudpdf::Types::DocPagesDelete400ResponseName }, optional: false, nullable: false

      field :code, -> { Cloudpdf::Types::DocPagesDelete400ResponseCode }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :details, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
