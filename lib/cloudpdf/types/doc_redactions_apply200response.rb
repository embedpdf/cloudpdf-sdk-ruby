# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocRedactionsApply200Response < Internal::Types::Model
      field :meta, -> { Cloudpdf::Types::DocRedactionsApply200ResponseMeta }, optional: false, nullable: false
    end
  end
end
