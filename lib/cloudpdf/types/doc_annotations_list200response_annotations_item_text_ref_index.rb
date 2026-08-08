# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemTextRefIndex < Internal::Types::Model
      field :page_object_number, -> { Integer }, optional: false, nullable: false, api_name: "pageObjectNumber"

      field :index, -> { Integer }, optional: false, nullable: false

      field :revision, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemTextRefIndexRevision }, optional: false, nullable: false
    end
  end
end
