# frozen_string_literal: true

module CloudPDF
  module Types
    class MutationMeta < Internal::Types::Model
      field :affected_pages, -> { Internal::Types::Array[CloudPDF::Types::PageRef] }, optional: false, nullable: false, api_name: "affectedPages"

      field :cache_delta, -> { CloudPDF::Types::CacheDelta }, optional: false, nullable: true, api_name: "cacheDelta"

      field :op_id, -> { String }, optional: false, nullable: false, api_name: "opId"

      field :undoable, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
