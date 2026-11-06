# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesRemoveNameResponse < Internal::Types::Model
      field :layout, -> { CloudPDF::Types::DocPagesRemoveNameResponseLayout }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::MutationMeta }, optional: false, nullable: false
    end
  end
end
