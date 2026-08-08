# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemSquareInteriorColor < Internal::Types::Model
      field :r, -> { Integer }, optional: false, nullable: false

      field :g, -> { Integer }, optional: false, nullable: false

      field :b, -> { Integer }, optional: false, nullable: false
    end
  end
end
