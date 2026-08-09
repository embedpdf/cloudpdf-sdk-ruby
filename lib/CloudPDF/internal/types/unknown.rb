# frozen_string_literal: true

module CloudPDF
  module Internal
    module Types
      module Unknown
        include CloudPDF::Internal::Types::Type

        def coerce(value)
          value
        end
      end
    end
  end
end
