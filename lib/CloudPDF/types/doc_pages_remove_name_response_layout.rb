# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesRemoveNameResponseLayout < Internal::Types::Model
      field :page_count, -> { Integer }, optional: false, nullable: false, api_name: "pageCount"

      field :pages, -> { Internal::Types::Array[CloudPDF::Types::DocPagesRemoveNameResponseLayoutPagesItem] }, optional: false, nullable: false

      field :labels, -> { Internal::Types::Array[CloudPDF::Types::DocPagesRemoveNameResponseLayoutLabelsItem] }, optional: false, nullable: false

      field :named_pages, -> { Internal::Types::Array[CloudPDF::Types::DocPagesRemoveNameResponseLayoutNamedPagesItem] }, optional: false, nullable: false, api_name: "namedPages"
    end
  end
end
