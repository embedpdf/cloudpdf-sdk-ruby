# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemPagesRotateLayoutNamedPagesItem < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :target, -> { CloudPDF::Types::ChangeItemPagesRotateLayoutNamedPagesItemTarget }, optional: false, nullable: false
    end
  end
end
