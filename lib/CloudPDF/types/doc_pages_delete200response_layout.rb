# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesDelete200ResponseLayout < Internal::Types::Model
      field :page_count, -> { Integer }, optional: false, nullable: false, api_name: "pageCount"

      field :pages, -> { Internal::Types::Array[CloudPDF::Types::DocPagesDelete200ResponseLayoutPagesItem] }, optional: false, nullable: false

      field :named_pages, -> { Internal::Types::Array[CloudPDF::Types::DocPagesDelete200ResponseLayoutNamedPagesItem] }, optional: false, nullable: false, api_name: "namedPages"
    end
  end
end
