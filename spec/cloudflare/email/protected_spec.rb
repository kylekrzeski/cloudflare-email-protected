# frozen_string_literal: true

RSpec.describe Cloudflare::Email::Protected do
  describe "#encode" do
    it "should encode the specific email" do
      hex1 = Cloudflare::Email::Protected.encode("username@domain.tld")
      hex2 = Cloudflare::Email::Protected.encode("username@domain.tld")

      expect(hex1).not_to eq(hex2)
    end
  end

  describe "#decode" do
    let(:hex1) { "ff8a8c9a8d919e929abf9b90929e9691d18b939b" }
    let(:hex2) { "285d5b4d5a4649454d684c4745494146065c444c" }

    it "should decode the specific email" do
      email1 = Cloudflare::Email::Protected.decode(hex1)
      email2 = Cloudflare::Email::Protected.decode(hex2)

      expect(email1).to eq(email2)
    end
  end
end
