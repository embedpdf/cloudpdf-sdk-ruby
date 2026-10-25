# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemPagesInsertLayoutNamedPagesItem < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :target, -> { CloudPDF::Types::ChangeItemPagesInsertLayoutNamedPagesItemTarget }, optional: false, nullable: false
    end
  end
end
