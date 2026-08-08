# frozen_string_literal: true

module Cloudpdf
  module Internal
    module Types
      module Unknown
        include Cloudpdf::Internal::Types::Type

        def coerce(value)
          value
        end
      end
    end
  end
end
