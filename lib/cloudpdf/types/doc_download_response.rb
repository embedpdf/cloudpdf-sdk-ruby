# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocDownloadResponse < Internal::Types::Model
      field :name, -> { Cloudpdf::Types::DocDownloadResponseName }, optional: false, nullable: false

      field :code, -> { Cloudpdf::Types::DocDownloadResponseCode }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :details, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
