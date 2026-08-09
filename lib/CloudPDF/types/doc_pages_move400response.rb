# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesMove400Response < Internal::Types::Model
      field :name, -> { CloudPDF::Types::DocPagesMove400ResponseName }, optional: false, nullable: false

      field :code, -> { CloudPDF::Types::DocPagesMove400ResponseCode }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :details, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
