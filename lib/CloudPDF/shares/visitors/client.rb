# frozen_string_literal: true

module CloudPDF
  module Shares
    module Visitors
      class Client
        # @param client [CloudPDF::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # An archived link's visitors are listed too.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :tenant_id
        # @option params [String] :share_id
        # @option params [Integer, nil] :limit
        # @option params [String, nil] :cursor
        #
        # @example
        #   client.shares.visitors.list(
        #     tenant_id: "tenantId",
        #     share_id: "shareId"
        #   )
        #
        # @return [CloudPDF::Types::SharesVisitorsList200Response]
        def list(request_options: {}, **params)
          params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
          query_params["limit"] = params[:limit] if params.key?(:limit)
          query_params["cursor"] = params[:cursor] if params.key?(:cursor)

          request = CloudPDF::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/shares/#{URI.encode_uri_component(params[:share_id].to_s)}/visitors",
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
            (response.body.to_s.empty? ? nil : CloudPDF::Types::SharesVisitorsList200Response.load(response.body))
          else
            error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Their handle brings them back as a new visitor, who is asked again. Deleting a visitor already deleted changes
        # nothing.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :tenant_id
        # @option params [String] :share_id
        # @option params [String] :visitor_id
        #
        # @example
        #   client.shares.visitors.delete(
        #     tenant_id: "tenantId",
        #     share_id: "shareId",
        #     visitor_id: "visitorId"
        #   )
        #
        # @return [untyped]
        def delete(request_options: {}, **params)
          params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
          request = CloudPDF::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "DELETE",
            path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/shares/#{URI.encode_uri_component(params[:share_id].to_s)}/visitors/#{URI.encode_uri_component(params[:visitor_id].to_s)}",
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
end
