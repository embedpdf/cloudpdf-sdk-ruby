# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesSetNameResponseLayoutNamedPagesItem < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :target, -> { CloudPDF::Types::DocPagesSetNameResponseLayoutNamedPagesItemTarget }, optional: false, nullable: false
    end
  end
end
