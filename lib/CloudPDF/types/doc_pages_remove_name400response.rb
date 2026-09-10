# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesRemoveName400Response < Internal::Types::Model
      field :name, -> { CloudPDF::Types::DocPagesRemoveName400ResponseName }, optional: false, nullable: false

      field :code, -> { CloudPDF::Types::DocPagesRemoveName400ResponseCode }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :details, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
