cask "nori" do
  version "0.7.0"
  sha256 "359c3f3eb7081f4b6f416fd5cc7eeebfec523590b1481f6af0d4b2a9c9c7502b"

  url "https://github.com/mk-tdev/nori/releases/download/v#{version}/Nori-#{version}-apple-silicon.zip"
  name "Nori"
  desc "Native dashboard for system and developer workload metrics"
  homepage "https://github.com/mk-tdev/nori"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Nori.app"

  caveats <<~EOS
    Nori is distributed without Apple Developer ID notarization. If macOS
    blocks the first launch, try opening Nori once, then go to System Settings
    → Privacy & Security → Security, choose Open Anyway, and confirm Open.
  EOS
end
