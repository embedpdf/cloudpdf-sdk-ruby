# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesRemoveNameResponseLayoutNamedPagesItem < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :target, -> { CloudPDF::Types::DocPagesRemoveNameResponseLayoutNamedPagesItemTarget }, optional: false, nullable: false
    end
  end
end
