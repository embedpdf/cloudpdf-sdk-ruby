# frozen_string_literal: true

module CloudPDF
  module Types
    class DocChanges200ResponseChangesItem < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :status

      member -> { CloudPDF::Types::DocChanges200ResponseChangesItemApplied }, key: "APPLIED"

      member -> { CloudPDF::Types::DocChanges200ResponseChangesItemRefused }, key: "REFUSED"
    end
  end
end
