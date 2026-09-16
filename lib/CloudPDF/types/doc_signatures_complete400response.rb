# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesComplete400Response < Internal::Types::Model
      field :name, -> { CloudPDF::Types::DocSignaturesComplete400ResponseName }, optional: false, nullable: false

      field :code, -> { CloudPDF::Types::DocSignaturesComplete400ResponseCode }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :details, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
