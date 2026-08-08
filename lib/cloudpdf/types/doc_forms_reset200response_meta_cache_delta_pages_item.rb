# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsReset200ResponseMetaCacheDeltaPagesItem < Internal::Types::Model
      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :cache, -> { Cloudpdf::Types::DocFormsReset200ResponseMetaCacheDeltaPagesItemCache }, optional: false, nullable: false
    end
  end
end
