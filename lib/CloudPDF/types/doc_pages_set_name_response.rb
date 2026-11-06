# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesSetNameResponse < Internal::Types::Model
      field :layout, -> { CloudPDF::Types::DocPagesSetNameResponseLayout }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::MutationMeta }, optional: false, nullable: false
    end
  end
end
