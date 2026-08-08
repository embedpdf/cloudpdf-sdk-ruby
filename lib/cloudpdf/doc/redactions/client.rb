# frozen_string_literal: true

module Cloudpdf
  module Doc
    module Redactions
      class Client
        # @param client [Cloudpdf::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # @param request_options [Hash]
        # @param params [Cloudpdf::Types::DocRedactionsApplyRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :doc_id
        # @option params [String] :layer_name
        # @option params [String, nil] :document_password
        #
        # @example
        #   client.doc.redactions.apply(
        #     doc_id: "docId",
        #     layer_name: "layerName",
        #     request: {
        #       key: "value"
        #     }
        #   )
        #
        # @return [Cloudpdf::Types::DocRedactionsApply200Response]
        def apply(request_options: {}, **params)
          params = Cloudpdf::Internal::Types::Utils.normalize_keys(params)
          path_param_names = %i[doc_id layer_name]
          body_params = params.except(*path_param_names)

          headers = {}
          headers["X-Document-Password"] = params[:document_password] if params[:document_password]

          request = Cloudpdf::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v1/docs/#{URI.encode_uri_component(params[:doc_id].to_s)}/layers/#{URI.encode_uri_component(params[:layer_name].to_s)}/redactions/apply",
            headers: headers,
            body: body_params,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Cloudpdf::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Cloudpdf::Types::DocRedactionsApply200Response.load(response.body)
          else
            error_class = Cloudpdf::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
