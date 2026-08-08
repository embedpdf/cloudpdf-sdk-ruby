# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsReset200Response < Internal::Types::Model
      field :meta, -> { Cloudpdf::Types::DocFormsReset200ResponseMeta }, optional: false, nullable: false
    end
  end
end
