# frozen_string_literal: true

module CloudPDF
  module Tenants
    class Client
      # @param client [CloudPDF::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer, nil] :limit
      # @option params [String, nil] :cursor
      #
      # @example
      #   client.tenants.list
      #
      # @return [CloudPDF::Types::TenantsList200Response]
      def list(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["limit"] = params[:limit] if params.key?(:limit)
        query_params["cursor"] = params[:cursor] if params.key?(:cursor)

        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/tenants",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise CloudPDF::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          CloudPDF::Types::TenantsList200Response.load(response.body)
        else
          error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [CloudPDF::Tenants::Types::TenantsCreateRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.tenants.create(id: "id")
      #
      # @return [CloudPDF::Types::TenantsCreate200Response]
      def create(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/tenants",
          body: CloudPDF::Tenants::Types::TenantsCreateRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise CloudPDF::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          CloudPDF::Types::TenantsCreate200Response.load(response.body)
        else
          error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :tenant_id
      #
      # @example
      #   client.tenants.get(tenant_id: "tenantId")
      #
      # @return [CloudPDF::Types::TenantsGet200Response]
      def get(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise CloudPDF::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          CloudPDF::Types::TenantsGet200Response.load(response.body)
        else
          error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Destroys the tenant and everything in its namespace — documents, layers, stored bytes, audit history.
      # Irreversible.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :tenant_id
      #
      # @example
      #   client.tenants.delete(tenant_id: "tenantId")
      #
      # @return [untyped]
      def delete(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}",
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
