class OpenapiSdkgen < Formula
  desc "Generate TypeScript SDK source from OpenAPI documents"
  homepage "https://github.com/connextable/openapi-sdkgen"
  url "https://github.com/connextable/openapi-sdkgen/archive/052799340187b4f0a02b44a94f510b2f7e63cb6b.tar.gz"
  version "0.1.3"
  sha256 "4e5edf11a38bd0b1d79dcc3956c0c5966bfb5e77a17813366fad0fb2e0f109c0"
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
