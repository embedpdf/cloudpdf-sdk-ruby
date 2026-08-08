# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsReset404Response < Internal::Types::Model
      field :name, -> { Cloudpdf::Types::DocFormsReset404ResponseName }, optional: false, nullable: false

      field :code, -> { Cloudpdf::Types::DocFormsReset404ResponseCode }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :details, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
