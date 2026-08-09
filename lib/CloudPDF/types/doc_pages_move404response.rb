# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesMove404Response < Internal::Types::Model
      field :name, -> { CloudPDF::Types::DocPagesMove404ResponseName }, optional: false, nullable: false

      field :code, -> { CloudPDF::Types::DocPagesMove404ResponseCode }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :details, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
