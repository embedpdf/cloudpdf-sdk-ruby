# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsFlatten404Response < Internal::Types::Model
      field :name, -> { CloudPDF::Types::DocAnnotationsFlatten404ResponseName }, optional: false, nullable: false

      field :code, -> { CloudPDF::Types::DocAnnotationsFlatten404ResponseCode }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :details, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
