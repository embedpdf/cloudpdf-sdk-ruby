# frozen_string_literal: true

module CloudPDF
  module Types
    class DocRedactionsApply200Response < Internal::Types::Model
      field :meta, -> { CloudPDF::Types::DocRedactionsApply200ResponseMeta }, optional: false, nullable: false
    end
  end
end
