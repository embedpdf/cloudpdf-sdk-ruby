# frozen_string_literal: true

module CloudPDF
  module Types
    class DocManifestResponsePagesItem < Internal::Types::Model
      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :cache, -> { CloudPDF::Types::DocManifestResponsePagesItemCache }, optional: false, nullable: false
    end
  end
end
