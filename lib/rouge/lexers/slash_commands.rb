# -*- coding: utf-8 -*- #
# frozen_string_literal: true

module Rouge
  module Lexers
    class SlashCommands < RegexLexer
      title "Slash Commands"
      desc "Chat-style slash commands such as /me or /join"

      tag 'slash'
      aliases 'slash-commands'

      state :root do
        rule %r/\s+/, Text

        # A slash command starts a whitespace-separated word, e.g. /me or /join.
        # Path-like words such as /usr/bin are not treated as commands.
        rule %r(/[\w-]+(?![\w/-])), Keyword

        # Consume whole words, so a slash inside a word (and/or, http://...)
        # is never picked up as a command.
        rule %r/\S+/, Text
      end
    end
  end
end
