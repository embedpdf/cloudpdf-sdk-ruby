# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesFlatten200Response < Internal::Types::Model
      field :meta, -> { CloudPDF::Types::DocPagesFlatten200ResponseMeta }, optional: false, nullable: false
    end
  end
end
