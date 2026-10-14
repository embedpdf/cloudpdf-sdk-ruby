# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesInsert200Response < Internal::Types::Model
      field :inserted_pages, -> { Internal::Types::Array[CloudPDF::Types::PageRef] }, optional: false, nullable: false, api_name: "insertedPages"

      field :layout, -> { CloudPDF::Types::DocPagesInsert200ResponseLayout }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::MutationMeta }, optional: false, nullable: false
    end
  end
end
