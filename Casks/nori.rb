cask "nori" do
  version "0.6.0"
  sha256 "cacf152f90afcd6a788a5fd90cc1fa87cb7d7939f35a1478a4405dc70000fdf4"

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
