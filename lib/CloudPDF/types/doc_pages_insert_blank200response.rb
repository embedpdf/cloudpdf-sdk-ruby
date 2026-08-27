# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesInsertBlank200Response < Internal::Types::Model
      field :meta, -> { CloudPDF::Types::DocPagesInsertBlank200ResponseMeta }, optional: false, nullable: false
    end
  end
end
