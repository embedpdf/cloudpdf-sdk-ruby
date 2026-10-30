# frozen_string_literal: true

module CloudPDF
  module Grants
    class Client
      # @param client [CloudPDF::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Unauthenticated, but requires a browser Origin header, checked against the grant allowlist. Unknown, deleted,
      # paused and archived grants are indistinguishable (404). Passphrase-protected grants return 422
      # GrantPassphraseRequired until `passphrase` is supplied. A grant that asks its visitors who they are on open
      # returns 422 VisitorIdentityRequired until the required answers are given; `error.details` carries `fields` (what
      # the grant asks), `missing`, `invalid`, `purpose` and `privacyUrl`. A grant that asks before the first change
      # issues the session at once with `visitor.identityRequest`, and writes answer 403 VisitorIdentityRequired with
      # the same details until the visitor exchanges again with their answers. Answers that can not be taken answer 422
      # on any grant. Mounted only when the deployment can sign (HS256 mode).
      #
      # @param request_options [Hash]
      # @param params [CloudPDF::Grants::Types::GrantsExchangeRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.grants.exchange(grant: "grant")
      #
      # @return [CloudPDF::Types::GrantsExchange200Response]
      def exchange(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/grant-sessions",
          body: CloudPDF::Grants::Types::GrantsExchangeRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise CloudPDF::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : CloudPDF::Types::GrantsExchange200Response.load(response.body))
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
      # @option params [Integer, nil] :limit
      # @option params [String, nil] :cursor
      # @option params [String, nil] :doc_id
      # @option params [Boolean, nil] :archived
      #
      # @example
      #   client.grants.list(tenant_id: "tenantId")
      #
      # @return [CloudPDF::Types::GrantsList200Response]
      def list(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["limit"] = params[:limit] if params.key?(:limit)
        query_params["cursor"] = params[:cursor] if params.key?(:cursor)
        query_params["docId"] = params[:doc_id] if params.key?(:doc_id)
        query_params["archived"] = params[:archived] if params.key?(:archived)

        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/grants",
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
          (response.body.to_s.empty? ? nil : CloudPDF::Types::GrantsList200Response.load(response.body))
        else
          error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # The returned id is what a link page or an embed opens. Mounted only when the deployment can sign (HS256 mode) —
      # exchange mints session JWTs, so grants exist only where minting does.
      #
      # @param request_options [Hash]
      # @param params [CloudPDF::Grants::Types::GrantsCreateRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :tenant_id
      #
      # @example
      #   client.grants.create(
      #     tenant_id: "tenantId",
      #     doc_id: "docId",
      #     scope: ["scope"]
      #   )
      #
      # @return [CloudPDF::Types::GrantsCreate200Response]
      def create(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        request_data = CloudPDF::Grants::Types::GrantsCreateRequest.new(params).to_h
        non_body_param_names = %w[tenantId]
        body = request_data.except(*non_body_param_names)

        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/grants",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise CloudPDF::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : CloudPDF::Types::GrantsCreate200Response.load(response.body))
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
      # @option params [String] :grant_id
      #
      # @example
      #   client.grants.get(
      #     tenant_id: "tenantId",
      #     grant_id: "grantId"
      #   )
      #
      # @return [CloudPDF::Types::GrantsGet200Response]
      def get(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/grants/#{URI.encode_uri_component(params[:grant_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise CloudPDF::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : CloudPDF::Types::GrantsGet200Response.load(response.body))
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
      # @option params [String] :grant_id
      #
      # @example
      #   client.grants.delete(
      #     tenant_id: "tenantId",
      #     grant_id: "grantId"
      #   )
      #
      # @return [untyped]
      def delete(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/grants/#{URI.encode_uri_component(params[:grant_id].to_s)}",
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

      # @param request_options [Hash]
      # @param params [CloudPDF::Grants::Types::GrantsUpdateRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :tenant_id
      # @option params [String] :grant_id
      #
      # @example
      #   client.grants.update(
      #     tenant_id: "tenantId",
      #     grant_id: "grantId"
      #   )
      #
      # @return [CloudPDF::Types::GrantsUpdate200Response]
      def update(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        request_data = CloudPDF::Grants::Types::GrantsUpdateRequest.new(params).to_h
        non_body_param_names = %w[tenantId grantId]
        body = request_data.except(*non_body_param_names)

        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/grants/#{URI.encode_uri_component(params[:grant_id].to_s)}",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise CloudPDF::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : CloudPDF::Types::GrantsUpdate200Response.load(response.body))
        else
          error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Archiving is final: an archived grant never exchanges again, and to give access again you create a new grant.
      # Pausing (`disabled`) is the reversible stop. An archived grant no longer counts as using its shared layer, so
      # that layer can be deleted.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :tenant_id
      # @option params [String] :grant_id
      #
      # @example
      #   client.grants.archive(
      #     tenant_id: "tenantId",
      #     grant_id: "grantId"
      #   )
      #
      # @return [CloudPDF::Types::GrantsArchive200Response]
      def archive(request_options: {}, **params)
        params = CloudPDF::Internal::Types::Utils.normalize_keys(params)
        request = CloudPDF::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/tenants/#{URI.encode_uri_component(params[:tenant_id].to_s)}/grants/#{URI.encode_uri_component(params[:grant_id].to_s)}/archive",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise CloudPDF::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : CloudPDF::Types::GrantsArchive200Response.load(response.body))
        else
          error_class = CloudPDF::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @return [CloudPDF::Visitors::Client]
      def visitors
        @visitors ||= CloudPDF::Grants::Visitors::Client.new(client: @client)
      end
    end
  end
end
