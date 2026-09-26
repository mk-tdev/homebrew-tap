cask "nori" do
  version "0.5.0"
  sha256 "1a9cc76813ee391d195460548616fa313e263b02e6b7a4e47bb6b7ad8c4e2286"

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
