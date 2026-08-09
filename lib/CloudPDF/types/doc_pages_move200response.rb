# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesMove200Response < Internal::Types::Model
      field :meta, -> { CloudPDF::Types::DocPagesMove200ResponseMeta }, optional: false, nullable: false
    end
  end
end
