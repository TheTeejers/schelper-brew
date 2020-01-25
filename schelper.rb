class Schelper < Formula
  desc "Analyze log files from Sauce Connect"
  homepage "https://github.com/mdsauce/schelper"
  url "https://github.com/mdsauce/schelper/archive/v1.1.4.tar.gz"
  sha256 "e93e57f191fe2f008254550f1ce8cafc754c2ba5ac36b22dddd7bfda313109df"
  depends_on "go" => :build
  version "1.1.4"

  def install
    system "go", "build", "-ldflags", "-X github.com/mdsauce/schelper/cmd.CurVersion=1.1.4", "-o", bin/"schelper", "."
  end

  test do
    system "#{bin}/schelper", --help, ">", "output.txt"
    assert_predicate ./"output.txt", :exist?
  end
end
