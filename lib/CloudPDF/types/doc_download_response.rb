# frozen_string_literal: true

module CloudPDF
  module Types
    class DocDownloadResponse < Internal::Types::Model
      field :name, -> { CloudPDF::Types::DocDownloadResponseName }, optional: false, nullable: false

      field :code, -> { CloudPDF::Types::DocDownloadResponseCode }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :details, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
