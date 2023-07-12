# frozen_string_literal: true

require_relative "protected/version"

module Cloudflare
  module Email
    class Protected
      class Error < StandardError; end

      def self.decode(encoded)
        email, r, n = '', encoded[0..1].to_i(16), 2
        loop do
          email += (encoded[n..(n + 1)].to_i(16) ^ r).chr
          n += 2
          break if encoded.size <= n
        end
        email
      end
    end
  end
end
