# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesDelete400Response < Internal::Types::Model
      field :name, -> { CloudPDF::Types::DocPagesDelete400ResponseName }, optional: false, nullable: false

      field :code, -> { CloudPDF::Types::DocPagesDelete400ResponseCode }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :details, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
