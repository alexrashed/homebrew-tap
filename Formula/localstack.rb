# typed: false
# frozen_string_literal: true

class Localstack < Formula
    desc "A fully functional local AWS cloud stack"
    homepage "https://github.com/swartzrock/pace"
    url "https://github.com/alexrashed/localstack-packaged-cli/archive/v2.0.3.dev.tar.gz"
    sha256 "33306ebd4622ed9bc5072e8ae928a919ff19a32cfc5364dcd4296d74bf8c3209"
    license "Apache-2.0"
  
    on_macos do
      url "https://github.com/alexrashed/localstack-packaged-cli/releases/download/v2.0.3.dev/localstack-cli_2.0.3.dev20230522172943_darwin_amd64-dir.tar.gz"
      sha256 "8873136ef21734241ef47576fdf1deaa7a04a6f7e10ed818959caf7c1f865e63"
    end
  
    on_linux do
      on_intel do
        url "https://github.com/alexrashed/localstack-packaged-cli/releases/download/v2.0.3.dev/localstack-cli_2.0.3.dev20230522172943_linux_amd64-dir.tar.gz"
        sha256 "f7ab079998b83dcf61048bb93447c5825009dfaae93d39b1ba78d8e9b4cefd50"
      end
  
      on_arm do
        url "https://github.com/alexrashed/localstack-packaged-cli/releases/download/v2.0.3.dev/localstack-cli_2.0.3.dev20230522172943_linux_arm64-dir.tar.gz"
        sha256 "f7ab079998b83dcf61048bb93447c5825009dfaae93d39b1ba78d8e9b4cefd50"
      end
    end
  
    def install
        libexec.install Dir["*"]
        bin.install_symlink libexec/"localstack"
    end
  end