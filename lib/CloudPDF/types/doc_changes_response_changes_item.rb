# frozen_string_literal: true

module CloudPDF
  module Types
    class DocChangesResponseChangesItem < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :status

      member -> { CloudPDF::Types::DocChangesResponseChangesItemApplied }, key: "APPLIED"

      member -> { CloudPDF::Types::DocChangesResponseChangesItemRefused }, key: "REFUSED"
    end
  end
end
