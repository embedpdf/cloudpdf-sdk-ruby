# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentActionsSnapshotNameTreeScriptsItem < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :action, -> { CloudPDF::Types::PdfActionTree }, optional: false, nullable: false
    end
  end
end
