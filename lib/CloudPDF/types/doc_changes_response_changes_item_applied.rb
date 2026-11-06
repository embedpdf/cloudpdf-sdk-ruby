# frozen_string_literal: true

module CloudPDF
  module Types
    class DocChangesResponseChangesItemApplied < Internal::Types::Model
      field :op_id, -> { String }, optional: false, nullable: false, api_name: "opId"

      field :result, -> { CloudPDF::Types::ChangeResult }, optional: false, nullable: false
    end
  end
end
