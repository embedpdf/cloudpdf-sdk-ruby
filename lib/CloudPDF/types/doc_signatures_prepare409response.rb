# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesPrepare409Response < Internal::Types::Model
      field :name, -> { CloudPDF::Types::DocSignaturesPrepare409ResponseName }, optional: false, nullable: false

      field :code, -> { CloudPDF::Types::DocSignaturesPrepare409ResponseCode }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :details, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
