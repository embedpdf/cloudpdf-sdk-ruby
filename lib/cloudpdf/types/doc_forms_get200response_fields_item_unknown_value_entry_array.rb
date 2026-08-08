# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsGet200ResponseFieldsItemUnknownValueEntryArray < Internal::Types::Model
      field :values, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
