# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsUpdate200Response < Internal::Types::Model
      field :meta, -> { Cloudpdf::Types::DocAnnotationsUpdate200ResponseMeta }, optional: false, nullable: false
    end
  end
end
