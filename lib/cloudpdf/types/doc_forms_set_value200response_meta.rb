# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsSetValue200ResponseMeta < Internal::Types::Model
      field :affected_pages, -> { Internal::Types::Array[Cloudpdf::Types::DocFormsSetValue200ResponseMetaAffectedPagesItem] }, optional: false, nullable: false, api_name: "affectedPages"

      field :cache_delta, -> { Cloudpdf::Types::DocFormsSetValue200ResponseMetaCacheDelta }, optional: false, nullable: true, api_name: "cacheDelta"
    end
  end
end
