class Nuq < Formula
  desc "Lightweight meta harness for Claude Code, Codex and Copilot agents"
  homepage "https://github.com/lordofthetobacco/nuq"
  url "https://github.com/lordofthetobacco/nuq/releases/download/v0.1.1/nuq-0.1.1-macos-universal.tar.gz"
  sha256 "e15c11e475a0d931227cbfbcc8e07dc7f99bb0b7500dcd61db53e279fab4f5b4"

  depends_on "tmux"

  on_linux do
    on_arm do
      url "https://github.com/lordofthetobacco/nuq/releases/download/v0.1.1/nuq-0.1.1-linux-aarch64.tar.gz"
      sha256 "14549e4494829e88280b2de9f0af4a14b5bb3b37f91d41254148f532f5adee6e"
    end
    on_intel do
      url "https://github.com/lordofthetobacco/nuq/releases/download/v0.1.1/nuq-0.1.1-linux-x86_64.tar.gz"
      sha256 "7c7543039622015b97a5dab87b9a578b71620228ca1fe056db25653c46ba148d"
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
