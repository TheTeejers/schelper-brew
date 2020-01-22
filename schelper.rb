class Schelper < Formula
  desc "Analyze log files from Sauce Connect"
  homepage "https://github.com/mdsauce/schelper"
  url "https://github.com/mdsauce/schelper/archive/v1.1.3.tar.gz"
  sha256 "288c271417569298f7952ce5f6e4c19b73e129b9bcda2f0a3f5e20b85f2c3736"
  depends_on "go" => :build
  version "1.1.3"

  def install
    system "go", "build", "-ldflags", "-X github.com/mdsauce/schelper/cmd.CurVersion=1.1.3", "-o", bin/"schelper", "."
  end

  test do
    system "#{bin}/schelper", --help, ">", "output.txt"
    assert_predicate ./"output.txt", :exist?
  end
end
