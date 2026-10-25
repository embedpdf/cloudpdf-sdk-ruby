# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpPagesInsertBlankSpec < Internal::Types::Model
      field :size, -> { CloudPDF::Types::ChangeOpPagesInsertBlankSpecSize }, optional: false, nullable: false

      field :count, -> { Integer }, optional: true, nullable: false
    end
  end
end
