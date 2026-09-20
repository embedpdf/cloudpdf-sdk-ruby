# frozen_string_literal: true

module CloudPDF
  module Doc
    module Pages
      module Types
        class DocPagesSetScaleRequestMeasureOrigin < Internal::Types::Model
          field :x, -> { Integer }, optional: false, nullable: false

          field :y, -> { Integer }, optional: false, nullable: false
        end
      end
    end
  end
end
