# frozen_string_literal: true

module Cloudpdf
  module Types
    class AdminErrorPayload < Internal::Types::Model
      field :error, -> { Cloudpdf::Types::AdminErrorPayloadError }, optional: false, nullable: false
    end
  end
end
