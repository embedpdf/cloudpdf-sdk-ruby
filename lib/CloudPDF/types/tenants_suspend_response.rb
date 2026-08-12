# frozen_string_literal: true

module CloudPDF
  module Types
    class TenantsSuspendResponse < Internal::Types::Model
      field :error, -> { CloudPDF::Types::TenantsSuspendResponseError }, optional: false, nullable: false
    end
  end
end
