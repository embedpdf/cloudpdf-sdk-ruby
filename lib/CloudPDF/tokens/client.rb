# frozen_string_literal: true

module CloudPDF
  module Tokens
    class Client
      # @param client [CloudPDF::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # kind "tenant" requires the API token — authority mints only downward. Mounted only when the deployment can sign
      # (HS256 mode); asymmetric deployments mint with their own private key.
      #
      # @param request_options [Hash]
      # @param params [CloudPDF::Types::TokensIssueRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :tenant_id
      #
      # @example
      #   client.tokens.issue(tenant_id: "tenantId")
      #
      # @return [CloudPDF::Types::TokensIssue200Response]
      def issue(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[tenant_id]
        body_params = params.except(*path_param_names)

        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/tokens",
          body: CloudPDF::Types::TokensIssueRequest.new(body_params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise CloudPDF::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          CloudPDF::Types::TokensIssue200Response.load(response.body)
        else
          error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Mounted only when the deployment enables token revocation.
      #
      # @param request_options [Hash]
      # @param params [CloudPDF::Tokens::Types::TokensRevokeRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :tenant_id
      # @option params [String] :jti
      #
      # @example
      #   client.tokens.revoke(
      #     tenant_id: "tenantId",
      #     jti: "jti"
      #   )
      #
      # @return [untyped]
      def revoke(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        request_data = CloudPDF::Tokens::Types::TokensRevokeRequest.new(params).to_h
        non_body_param_names = %w[tenantId jti]
        body = request_data.except(*non_body_param_names)

        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/tokens/#{URI.encode_uri_component(params[:jti].to_s)}/revoke",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise CloudPDF::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end
  end
end
