# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsImportData200Response < Internal::Types::Model
      field :meta, -> { Cloudpdf::Types::DocFormsImportData200ResponseMeta }, optional: false, nullable: false
    end
  end
end
