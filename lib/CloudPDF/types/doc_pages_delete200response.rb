# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesDelete200Response < Internal::Types::Model
      field :layout, -> { CloudPDF::Types::DocPagesDelete200ResponseLayout }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::MutationMeta }, optional: false, nullable: false
    end
  end
end
