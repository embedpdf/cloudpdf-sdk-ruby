# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesReorder200Response < Internal::Types::Model
      field :pages, -> { Internal::Types::Array[CloudPDF::Types::PageRef] }, optional: false, nullable: false

      field :layout, -> { CloudPDF::Types::DocPagesReorder200ResponseLayout }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::MutationMeta }, optional: false, nullable: false
    end
  end
end
