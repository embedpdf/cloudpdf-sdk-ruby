# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsSetValue400Response < Internal::Types::Model
      field :name, -> { CloudPDF::Types::DocFormsSetValue400ResponseName }, optional: false, nullable: false

      field :code, -> { CloudPDF::Types::DocFormsSetValue400ResponseCode }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :details, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
