# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocumentsDelete404ResponseError < Internal::Types::Model
      field :code, -> { String }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false
    end
  end
end
