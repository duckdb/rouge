# -*- coding: utf-8 -*- #
# frozen_string_literal: true

module Rouge
  module Lexers
    class PlainText < Lexer
      title "Plain Text"
      desc "A boring lexer that doesn't highlight anything"

      tag 'plaintext'
      aliases 'text'
      filenames '*.txt', 'Messages'
      mimetypes 'text/plain'

      attr_reader :token
      def initialize(*)
        super

        @token = token_option(:token) || Text
      end

      def stream_tokens(string, &b)
        # Text between angle brackets denotes a placeholder
        # where the user needs to change the input,
        # text between guillemets denotes a prompt
        string.scan(/⟨([^⟩]+)⟩|«([^»]+)»|([^⟨«]+|[⟨«])/) do |placeholder, prompt, text|
          if placeholder
            yield Generic::Emph, placeholder
          elsif prompt
            yield Generic::Prompt, prompt
          else
            yield self.token, text
          end
        end
      end
    end
  end
end
