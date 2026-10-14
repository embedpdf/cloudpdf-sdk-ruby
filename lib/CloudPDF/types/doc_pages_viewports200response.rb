# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesViewports200Response < Internal::Types::Model
      field :viewports, -> { Internal::Types::Array[CloudPDF::Types::DocPagesViewports200ResponseViewportsItem] }, optional: false, nullable: false
    end
  end
end
