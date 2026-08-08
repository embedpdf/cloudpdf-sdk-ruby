# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocHead200ResponseAccess < Internal::Types::Model
      field :required, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :reasons, -> { Internal::Types::Array[Cloudpdf::Types::DocHead200ResponseAccessReasonsItem] }, optional: false, nullable: false

      field :endpoint, -> { String }, optional: true, nullable: false
    end
  end
end
