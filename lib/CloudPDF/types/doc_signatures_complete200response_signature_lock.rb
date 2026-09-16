# frozen_string_literal: true

module CloudPDF
  module Types
    class DocSignaturesComplete200ResponseSignatureLock < Internal::Types::Model
      field :action, -> { CloudPDF::Types::DocSignaturesComplete200ResponseSignatureLockAction }, optional: false, nullable: false

      field :fields, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :permission, -> { Integer }, optional: true, nullable: false
    end
  end
end
