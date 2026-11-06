# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesSetNameResponseLayout < Internal::Types::Model
      field :page_count, -> { Integer }, optional: false, nullable: false, api_name: "pageCount"

      field :pages, -> { Internal::Types::Array[CloudPDF::Types::DocPagesSetNameResponseLayoutPagesItem] }, optional: false, nullable: false

      field :labels, -> { Internal::Types::Array[CloudPDF::Types::DocPagesSetNameResponseLayoutLabelsItem] }, optional: false, nullable: false

      field :named_pages, -> { Internal::Types::Array[CloudPDF::Types::DocPagesSetNameResponseLayoutNamedPagesItem] }, optional: false, nullable: false, api_name: "namedPages"
    end
  end
end
