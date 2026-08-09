# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsExportDataResponse < Internal::Types::Model
      field :name, -> { CloudPDF::Types::DocFormsExportDataResponseName }, optional: false, nullable: false

      field :code, -> { CloudPDF::Types::DocFormsExportDataResponseCode }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :details, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
