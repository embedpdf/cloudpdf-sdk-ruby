# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocRedactionsApply400Response < Internal::Types::Model
      field :name, -> { Cloudpdf::Types::DocRedactionsApply400ResponseName }, optional: false, nullable: false

      field :code, -> { Cloudpdf::Types::DocRedactionsApply400ResponseCode }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :details, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
