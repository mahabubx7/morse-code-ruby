# frozen_string_literal: true

require_relative '../morse_code'

# morse core to text @rspec

describe 'Unit tests for morse code to string' do
  it 'returns morse code to letter' do
    expect(decode_char('.-')).to eq('A')
  end

  it 'returns morse code to word' do
    expect(decode_word('-- .- .... .- -... ..- -...')).to eq('MAHABUB')
    expect(decode_word('.-.. .- .-- .-. . -. -.-. .')).to eq('LAWRENCE')
  end
end
