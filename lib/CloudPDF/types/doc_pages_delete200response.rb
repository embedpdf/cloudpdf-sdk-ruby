# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesDelete200Response < Internal::Types::Model
      field :meta, -> { CloudPDF::Types::DocPagesDelete200ResponseMeta }, optional: false, nullable: false
    end
  end
end
