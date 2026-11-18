# -*- coding: utf-8 -*- #
# frozen_string_literal: true

describe Rouge::Lexers::SlashCommands do
  let(:subject) { Rouge::Lexers::SlashCommands.new }

  include Support::Lexing

  it 'highlights slash commands as keywords' do
    assert_tokens_equal '/me waves hello',
      ['Keyword', '/me'],
      ['Text', ' waves hello']
  end

  it 'highlights commands on every line and after whitespace' do
    assert_tokens_equal "/join #general\n  /msg alice hi, type /help.",
      ['Keyword', '/join'],
      ['Text', " #general\n  "],
      ['Keyword', '/msg'],
      ['Text', ' alice hi, type '],
      ['Keyword', '/help'],
      ['Text', '.']
  end

  it 'highlights commands with dashes and digits' do
    assert_tokens_equal '/set-topic2 news',
      ['Keyword', '/set-topic2'],
      ['Text', ' news']
  end

  it 'does not highlight slashes inside words or paths' do
    assert_tokens_equal 'and/or http://x.org /usr/bin /',
      ['Text', 'and/or http://x.org /usr/bin /']
  end

  describe 'guessing' do
    include Support::Guessing

    it 'guesses by tag' do
      assert_equal Rouge::Lexers::SlashCommands, Rouge::Lexer.find('slash')
      assert_equal Rouge::Lexers::SlashCommands, Rouge::Lexer.find('slash-commands')
    end
  end
end
