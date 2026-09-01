# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentActionsSnapshot < Internal::Types::Model
      field :name_tree_scripts, -> { Internal::Types::Array[CloudPDF::Types::DocumentActionsSnapshotNameTreeScriptsItem] }, optional: false, nullable: false, api_name: "nameTreeScripts"

      field :open_action, -> { CloudPDF::Types::PdfActionTree }, optional: false, nullable: true, api_name: "openAction"

      field :open_destination, -> { CloudPDF::Types::PdfDestination }, optional: true, nullable: false, api_name: "openDestination"

      field :will_close, -> { CloudPDF::Types::PdfActionTree }, optional: true, nullable: false, api_name: "willClose"

      field :will_save, -> { CloudPDF::Types::PdfActionTree }, optional: true, nullable: false, api_name: "willSave"

      field :did_save, -> { CloudPDF::Types::PdfActionTree }, optional: true, nullable: false, api_name: "didSave"

      field :will_print, -> { CloudPDF::Types::PdfActionTree }, optional: true, nullable: false, api_name: "willPrint"

      field :did_print, -> { CloudPDF::Types::PdfActionTree }, optional: true, nullable: false, api_name: "didPrint"
    end
  end
end
