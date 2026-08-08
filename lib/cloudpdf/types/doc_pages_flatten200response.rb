# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocPagesFlatten200Response < Internal::Types::Model
      field :meta, -> { Cloudpdf::Types::DocPagesFlatten200ResponseMeta }, optional: false, nullable: false
    end
  end
end
