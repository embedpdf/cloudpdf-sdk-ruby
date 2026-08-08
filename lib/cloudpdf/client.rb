# frozen_string_literal: true

module Cloudpdf
  class Client
    # @param token [String]
    # @param base_url [String, nil]
    # @param max_retries [Integer]
    #
    # @return [void]
    def initialize(token:, base_url: nil, max_retries: 2)
      @raw_client = Cloudpdf::Internal::Http::RawClient.new(
        base_url: base_url,
        headers: {
          "X-Fern-Language" => "Ruby",
          Authorization: "Bearer #{token}"
        },
        max_retries: max_retries
      )
    end

    # @return [Cloudpdf::Deployment::Client]
    def deployment
      @deployment ||= Cloudpdf::Deployment::Client.new(client: @raw_client)
    end

    # @return [Cloudpdf::Doc::Client]
    def doc
      @doc ||= Cloudpdf::Doc::Client.new(client: @raw_client)
    end

    # @return [Cloudpdf::Tenants::Client]
    def tenants
      @tenants ||= Cloudpdf::Tenants::Client.new(client: @raw_client)
    end

    # @return [Cloudpdf::Documents::Client]
    def documents
      @documents ||= Cloudpdf::Documents::Client.new(client: @raw_client)
    end

    # @return [Cloudpdf::Tokens::Client]
    def tokens
      @tokens ||= Cloudpdf::Tokens::Client.new(client: @raw_client)
    end
  end
end
