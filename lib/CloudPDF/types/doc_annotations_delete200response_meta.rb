# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsDelete200ResponseMeta < Internal::Types::Model
      field :affected_pages, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsDelete200ResponseMetaAffectedPagesItem] }, optional: false, nullable: false, api_name: "affectedPages"

      field :cache_delta, -> { CloudPDF::Types::DocAnnotationsDelete200ResponseMetaCacheDelta }, optional: false, nullable: true, api_name: "cacheDelta"
    end
  end
end
