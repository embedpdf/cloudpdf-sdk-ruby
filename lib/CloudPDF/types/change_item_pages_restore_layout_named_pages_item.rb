# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemPagesRestoreLayoutNamedPagesItem < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :target, -> { CloudPDF::Types::ChangeItemPagesRestoreLayoutNamedPagesItemTarget }, optional: false, nullable: false
    end
  end
end
