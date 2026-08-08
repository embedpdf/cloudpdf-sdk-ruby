# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocRedactionsApply200ResponseMeta < Internal::Types::Model
      field :affected_pages, -> { Internal::Types::Array[Cloudpdf::Types::DocRedactionsApply200ResponseMetaAffectedPagesItem] }, optional: false, nullable: false, api_name: "affectedPages"

      field :cache_delta, -> { Cloudpdf::Types::DocRedactionsApply200ResponseMetaCacheDelta }, optional: false, nullable: true, api_name: "cacheDelta"
    end
  end
end
