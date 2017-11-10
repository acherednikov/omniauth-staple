require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Staple < OmniAuth::Strategies::OAuth2

      STAPLE_AUTH_URL =  ENV['STAPLE_AUTH_URL'] || 'http://localhost:3003'
      STAPLE_AUTH_ME_URL = '/oauth/me.json'

      option :name, :staple_oauth

      option :include_query_string, false

      option :client_options, {
        site:             STAPLE_AUTH_URL,
        authorize_url:    "#{STAPLE_AUTH_URL}/oauth/authorize",
        access_token_url: "#{STAPLE_AUTH_URL}/oauth/token"
      }

      uid do
        raw_info['id']
      end

      info do
        {
          email: raw_info['email']
        }
      end

      extra do
        {
          first_name: raw_info['first_name'],
          last_name: raw_info['last_name']
        }
      end

      def build_access_token
        verifier = request.params["code"]
        url = options.include_query_string ? callback_url : (full_host + script_name + callback_path)
        client.auth_code.get_token(verifier, {redirect_uri: url}.merge(token_params.to_hash(symbolize_keys: true)), deep_symbolize(options.auth_token_params))
      end

      def raw_info
        @raw_info ||= access_token.get(STAPLE_AUTH_ME_URL).parsed
      end

    end
  end
end