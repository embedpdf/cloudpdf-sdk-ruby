# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesFlattenResponse < Internal::Types::Model
      field :pages, -> { Internal::Types::Array[CloudPDF::Types::PageRef] }, optional: false, nullable: false

      field :usage, -> { CloudPDF::Types::DocPagesFlattenResponseUsage }, optional: false, nullable: false

      field :results, -> { Internal::Types::Array[CloudPDF::Types::DocPagesFlattenResponseResultsItem] }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::MutationMeta }, optional: false, nullable: false
    end
  end
end
