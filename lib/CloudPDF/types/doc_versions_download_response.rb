# frozen_string_literal: true

module CloudPDF
  module Types
    class DocVersionsDownloadResponse < Internal::Types::Model
      field :name, -> { CloudPDF::Types::DocVersionsDownloadResponseName }, optional: false, nullable: false

      field :code, -> { CloudPDF::Types::DocVersionsDownloadResponseCode }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :details, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
