class Schelper < Formula
  desc "Analyze log files from Sauce Connect"
  homepage "https://github.com/mdsauce/schelper"
  url "https://github.com/mdsauce/schelper/archive/v1.0.5.tar.gz"
  sha256 "dc218b88bddbc64b57387ac3369a0831a37f09cb795192db3e79ba01344d8e1e"
  depends_on "go" => :build
  version "1.0.5"

  def install
    system "go", "build", "-ldflags", "-X github.com/mdsauce/schelper/cmd.CurVersion=1.0.5", "-o", bin/"schelper", "."
  end

  test do
    system "#{bin}/schelper", --help, ">", "output.txt"
    assert_predicate ./"output.txt", :exist?
  end
end
