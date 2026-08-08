# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocManifest200ResponsePagesItem < Internal::Types::Model
      field :state, -> { Cloudpdf::Types::DocManifest200ResponsePagesItemState }, optional: false, nullable: false

      field :cache, -> { Cloudpdf::Types::DocManifest200ResponsePagesItemCache }, optional: false, nullable: false
    end
  end
end
