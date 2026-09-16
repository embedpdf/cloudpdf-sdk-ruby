# frozen_string_literal: true

module CloudPDF
  module Doc
    module Versions
      module Types
        module SignatureDigestVersionsRequestAlgorithm
          extend CloudPDF::Internal::Types::Enum

          SHA1 = "sha1"
          SHA256 = "sha256"
          SHA384 = "sha384"
          SHA512 = "sha512"
        end
      end
    end
  end
end
