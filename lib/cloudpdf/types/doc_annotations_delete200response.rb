# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsDelete200Response < Internal::Types::Model
      field :meta, -> { Cloudpdf::Types::DocAnnotationsDelete200ResponseMeta }, optional: false, nullable: false
    end
  end
end
