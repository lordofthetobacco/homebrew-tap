class Nuq < Formula
  desc "Lightweight meta harness for Claude Code, Codex and Copilot agents"
  homepage "https://github.com/lordofthetobacco/nuq"
  url "https://github.com/lordofthetobacco/nuq/releases/download/v0.1.0/nuq-0.1.0-macos-universal.tar.gz"
  sha256 "3cbff93aba08385d24c140c99d23da9b4f021d8ee3d5813bbaf4763148353765"

  depends_on "tmux"

  on_linux do
    on_arm do
      url "https://github.com/lordofthetobacco/nuq/releases/download/v0.1.0/nuq-0.1.0-linux-aarch64.tar.gz"
      sha256 "b4260b0abd80d6a58278b006c62520436ca0db5c9f9e49197240bc7327df8925"
    end
    on_intel do
      url "https://github.com/lordofthetobacco/nuq/releases/download/v0.1.0/nuq-0.1.0-linux-x86_64.tar.gz"
      sha256 "994e76bcab17962e191d9b35729a2eae78dafa759a442cd68978e9f338c2486f"
    end
  end

  def install
    bin.install "bin/nuq"
    pkgshare.install "LICENSES"
  end

  test do
    assert_equal "nuq #{version}", shell_output("#{bin}/nuq version").strip
  end
end
