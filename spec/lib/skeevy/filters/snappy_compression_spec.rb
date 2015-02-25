describe :snappy_compression do

  let(:uncompressed) { "the quick brown fox jumps over the lazy dog " * 2 }
  let(:compressed) { "Xxthe quick brown fox jumps over \x01\x1F\x1Clazy dog\x05\r\x9E,\x00".force_encoding('ASCII-8BIT') }
  let(:snappy) { Skeevy::Filters::SnappyCompression.new }

  it "#filter_read compresses as expected" do
    expect(snappy.filter_read(content: compressed)).to eq(uncompressed)
  end

  it "#filter_write uncompresses as expected" do
    expect(snappy.filter_write(content: uncompressed)).to eq(compressed)
  end

end