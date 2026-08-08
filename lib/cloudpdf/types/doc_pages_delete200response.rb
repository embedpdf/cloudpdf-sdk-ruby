# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocPagesDelete200Response < Internal::Types::Model
      field :meta, -> { Cloudpdf::Types::DocPagesDelete200ResponseMeta }, optional: false, nullable: false
    end
  end
end
