# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesComplete409Response < Internal::Types::Model
      field :name, -> { CloudPDF::Types::DocSignaturesComplete409ResponseName }, optional: false, nullable: false

      field :code, -> { CloudPDF::Types::DocSignaturesComplete409ResponseCode }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :details, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
