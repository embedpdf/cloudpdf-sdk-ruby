# frozen_string_literal: true

module CloudPDF
  module Types
    class CacheDeltaPagesItem < Internal::Types::Model
      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :cache, -> { CloudPDF::Types::CacheDeltaPagesItemCache }, optional: false, nullable: false
    end
  end
end
