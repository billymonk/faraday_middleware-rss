require 'spec_helper'

describe FaradayMiddleware::Rss::ParseRss do
  let(:rss) do
    <<-RSS
      <?xml version="1.0" encoding="UTF-8" ?>
      <rss version="2.0">

      <channel>
        <title>Nolan</title>
        <link>http://www.nolanisawesome.com/</link>
        <description>A list of reasons why Nolan is awesome</description>
        <item>
          <title>He knows how to use hi and bye appropriately</title>
          <link>http://www.nolanisawesome.com/hi-and-bye/</link>
          <description>When he sees you he says hi and when you are leaving he says bye.</description>
        </item>
        <item>
          <title>He can say dad</title>
          <link>http://www.nolanisawesome.com/dad/</link>
          <description>He asks for dad every morning when he wakes up.</description>
        </item>
      </channel>

      </rss>
    RSS
  end
  let(:connection) do
    Faraday.new do |faraday|
      faraday.response :rss

      faraday.adapter :test do |stub|
        stub.get('/') do
          [200, {}, rss]
        end
      end
    end
  end

  it "should parse the response body as rss" do
    connection.get('/').body.should be_an_instance_of(RSS::Rss)
  end
end
