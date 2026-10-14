# frozen_string_literal: true

module CloudPDF
  module Doc
    module Types
      class DocChangesRequestChangesItem < Internal::Types::Model
        field :op_id, -> { String }, optional: false, nullable: false, api_name: "opId"

        field :ops, -> { Internal::Types::Array[CloudPDF::Types::ChangeOp] }, optional: true, nullable: false

        field :undo_of, -> { String }, optional: true, nullable: false, api_name: "undoOf"
      end
    end
  end
end
