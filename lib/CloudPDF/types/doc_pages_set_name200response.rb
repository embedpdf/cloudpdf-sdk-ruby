# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesSetName200Response < Internal::Types::Model
      field :meta, -> { CloudPDF::Types::DocPagesSetName200ResponseMeta }, optional: false, nullable: false
    end
  end
end
