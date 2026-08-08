# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocPagesMove200Response < Internal::Types::Model
      field :meta, -> { Cloudpdf::Types::DocPagesMove200ResponseMeta }, optional: false, nullable: false
    end
  end
end
