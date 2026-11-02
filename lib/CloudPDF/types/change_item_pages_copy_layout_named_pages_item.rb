# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemPagesCopyLayoutNamedPagesItem < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :target, -> { CloudPDF::Types::ChangeItemPagesCopyLayoutNamedPagesItemTarget }, optional: false, nullable: false
    end
  end
end
