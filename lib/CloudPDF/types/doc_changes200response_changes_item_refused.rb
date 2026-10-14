# frozen_string_literal: true

module CloudPDF
  module Types
    class DocChanges200ResponseChangesItemRefused < Internal::Types::Model
      field :op_id, -> { String }, optional: false, nullable: false, api_name: "opId"

      field :error, -> { CloudPDF::Types::EngineErrorPayload }, optional: false, nullable: false
    end
  end
end
