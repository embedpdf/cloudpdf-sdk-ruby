# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesSetName200ResponseLayout < Internal::Types::Model
      field :page_count, -> { Integer }, optional: false, nullable: false, api_name: "pageCount"

      field :pages, -> { Internal::Types::Array[CloudPDF::Types::DocPagesSetName200ResponseLayoutPagesItem] }, optional: false, nullable: false

      field :named_pages, -> { Internal::Types::Array[CloudPDF::Types::DocPagesSetName200ResponseLayoutNamedPagesItem] }, optional: false, nullable: false, api_name: "namedPages"
    end
  end
end
