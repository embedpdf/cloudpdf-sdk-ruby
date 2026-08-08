# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocRedactionsApply404Response < Internal::Types::Model
      field :name, -> { Cloudpdf::Types::DocRedactionsApply404ResponseName }, optional: false, nullable: false

      field :code, -> { Cloudpdf::Types::DocRedactionsApply404ResponseCode }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :details, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
