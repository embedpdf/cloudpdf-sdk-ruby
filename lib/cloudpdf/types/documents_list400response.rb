# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocumentsList400Response < Internal::Types::Model
      field :error, -> { Cloudpdf::Types::DocumentsList400ResponseError }, optional: false, nullable: false
    end
  end
end
