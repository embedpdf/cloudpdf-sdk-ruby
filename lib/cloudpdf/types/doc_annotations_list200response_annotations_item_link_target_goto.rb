# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemLinkTargetGoto < Internal::Types::Model
      field :destination, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetGotoDestination }, optional: false, nullable: false
    end
  end
end
