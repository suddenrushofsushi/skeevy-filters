describe :snappy_compression do

  let(:binary) { "Xxthe quick brown fox jumps over \x01\x1F\x1Clazy dog\x05\r\x9E,\x00".force_encoding('ASCII-8BIT') }
  let(:utf8) { "Xxthe quick brown fox jumps over \u0001\u001F\u001Clazy dog\u0005\r\x9E,\u0000" }
  let(:snappy) { Skeevy::Filters::ForceUtf8Encoding.new }

  it "#filter_read forces UTF-8 encoding" do
    expect(snappy.filter_read(content: binary)).to eq(utf8)
  end

  it "#filter_write passes-through values with no change" do
    expect(snappy.filter_write(content: utf8)).to eq(utf8)
  end

end