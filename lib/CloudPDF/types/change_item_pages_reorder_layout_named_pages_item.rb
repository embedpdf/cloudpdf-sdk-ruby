# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemPagesReorderLayoutNamedPagesItem < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :target, -> { CloudPDF::Types::ChangeItemPagesReorderLayoutNamedPagesItemTarget }, optional: false, nullable: false
    end
  end
end
