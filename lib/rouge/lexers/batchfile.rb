# -*- coding: utf-8 -*- #
# frozen_string_literal: true

module Rouge
  module Lexers
    load_lexer 'shell.rb'

    # Uses the same highlighting rules as the shell lexer
    class Batchfile < Shell
      title "Batch"
      desc "Various shell languages, including sh and bash (multiline)"

      tag 'batch'
    end
  end
end
