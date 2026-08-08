# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsCreate200Response < Internal::Types::Model
      field :meta, -> { Cloudpdf::Types::DocAnnotationsCreate200ResponseMeta }, optional: false, nullable: false
    end
  end
end
