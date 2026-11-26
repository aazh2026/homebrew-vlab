class Vlab < Formula
  desc "Vlab — zero-dependency portfolio backtesting lab with a look-ahead guard and out-of-sample validity checks"
  homepage "https://github.com/aazh2026/vlab"
  url "https://github.com/aazh2026/vlab/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "f9aec05940ab5d394fd358c96d089402699671596c70bf32895428d9018ed3ca"
  license "MIT"
  version "1.1.1"

  depends_on "python@3.12"

  def install
    # src-layout package: install the `vlab` package itself into libexec so
    # the CLI wrapper can put libexec on PYTHONPATH. No build step, no deps.
    libexec.install Dir["src/vlab"]

    # The `vlab test` subcommand discovers the regression suite relative to the
    # package root, so the tests must ship alongside it.
    libexec.install "tests" if (buildpath/"tests").exist?

    (bin/"vlab").write <<~SH
      #!/bin/sh
      PYTHONPATH="#{libexec}" exec "#{Formula["python@3.12"].opt_bin}/python3.12" -m vlab "$@"
    SH
  end

  test do
    assert_match "vlab", shell_output("#{bin}/vlab --help")
    assert_match "validate", shell_output("#{bin}/vlab --help")
  end
end
