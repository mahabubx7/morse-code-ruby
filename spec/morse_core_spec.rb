require_relative '../morse_code'

# morse core to text @rspec

describe 'Unit tests for morse code to string' do
  it 'returns morse code to letter' do
    expect(decord_word('.-')).to eq('A')
    expect(decord_word('-- .- .... .- -... ..- -...')).to eq('MAHABUB')
    expect(decord_word('.-.. .- .-- .-. . -. -.-. .')).to eq('LAWRENCE')
  end
end