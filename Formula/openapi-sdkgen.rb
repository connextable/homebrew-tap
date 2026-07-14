class OpenapiSdkgen < Formula
  desc "Generate TypeScript SDK source from OpenAPI documents"
  homepage "https://github.com/connextable/openapi-sdkgen"
  url "https://github.com/connextable/openapi-sdkgen/archive/8050309ec3f2b5a67db4b555ff1719ad6d94ec61.tar.gz"
  version "0.2.1"
  sha256 "7154b9a3fc71df9f480491913270825fd14e1ed783a68ff8bdf2b4e5b1b5beb9"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    ENV["GOTOOLCHAIN"] = "auto"
    system "go", "build", "-trimpath", "-ldflags=-s -w", "-o", bin/"openapi-sdkgen", "./cmd/openapi-sdkgen"
  end

  test do
    system bin/"openapi-sdkgen", "--help"
  end
end
