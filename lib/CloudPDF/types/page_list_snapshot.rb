# frozen_string_literal: true

module CloudPDF
  module Types
    class PageListSnapshot < Internal::Types::Model
      field :page_count, -> { Integer }, optional: false, nullable: false, api_name: "pageCount"

      field :pages, -> { Internal::Types::Array[CloudPDF::Types::PageListSnapshotPagesItem] }, optional: false, nullable: false

      field :labels, -> { Internal::Types::Array[CloudPDF::Types::PageListSnapshotLabelsItem] }, optional: false, nullable: false

      field :named_pages, -> { Internal::Types::Array[CloudPDF::Types::PageListSnapshotNamedPagesItem] }, optional: false, nullable: false, api_name: "namedPages"
    end
  end
end
