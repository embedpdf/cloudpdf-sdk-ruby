# frozen_string_literal: true

module CloudPDF
  module Types
    class DocManifest200ResponsePagesItem < Internal::Types::Model
      field :state, -> { CloudPDF::Types::DocManifest200ResponsePagesItemState }, optional: false, nullable: false

      field :cache, -> { CloudPDF::Types::DocManifest200ResponsePagesItemCache }, optional: false, nullable: false
    end
  end
end
