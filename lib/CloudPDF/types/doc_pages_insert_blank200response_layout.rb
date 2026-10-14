# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesInsertBlank200ResponseLayout < Internal::Types::Model
      field :page_count, -> { Integer }, optional: false, nullable: false, api_name: "pageCount"

      field :pages, -> { Internal::Types::Array[CloudPDF::Types::DocPagesInsertBlank200ResponseLayoutPagesItem] }, optional: false, nullable: false

      field :named_pages, -> { Internal::Types::Array[CloudPDF::Types::DocPagesInsertBlank200ResponseLayoutNamedPagesItem] }, optional: false, nullable: false, api_name: "namedPages"
    end
  end
end
