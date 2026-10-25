# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemPagesDeleteLayoutNamedPagesItemTargetPage < Internal::Types::Model
      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false
    end
  end
end
