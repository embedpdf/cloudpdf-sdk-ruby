# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocumentsInit200Response < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :tag

      member -> { Cloudpdf::Types::DocumentsInit200ResponseCreated }, key: "CREATED"

      member -> { Cloudpdf::Types::DocumentsInit200ResponseResumed }, key: "RESUMED"

      member -> { Cloudpdf::Types::DocumentsInit200ResponseDeduped }, key: "DEDUPED"
    end
  end
end
