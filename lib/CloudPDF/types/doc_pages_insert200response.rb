# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesInsert200Response < Internal::Types::Model
      field :meta, -> { CloudPDF::Types::DocPagesInsert200ResponseMeta }, optional: false, nullable: false
    end
  end
end
