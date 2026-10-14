# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesFlatten200Response < Internal::Types::Model
      field :pages, -> { Internal::Types::Array[CloudPDF::Types::PageRef] }, optional: false, nullable: false

      field :usage, -> { CloudPDF::Types::DocPagesFlatten200ResponseUsage }, optional: false, nullable: false

      field :results, -> { Internal::Types::Array[CloudPDF::Types::DocPagesFlatten200ResponseResultsItem] }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::MutationMeta }, optional: false, nullable: false
    end
  end
end
