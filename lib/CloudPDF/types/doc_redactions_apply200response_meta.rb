# frozen_string_literal: true

module CloudPDF
  module Types
    class DocRedactionsApply200ResponseMeta < Internal::Types::Model
      field :affected_pages, -> { Internal::Types::Array[CloudPDF::Types::DocRedactionsApply200ResponseMetaAffectedPagesItem] }, optional: false, nullable: false, api_name: "affectedPages"

      field :cache_delta, -> { CloudPDF::Types::DocRedactionsApply200ResponseMetaCacheDelta }, optional: false, nullable: true, api_name: "cacheDelta"
    end
  end
end
