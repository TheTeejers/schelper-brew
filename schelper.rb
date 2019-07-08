class Schelper < Formula
  desc "Analyze log files from Sauce Connect"
  homepage "https://github.com/mdsauce/schelper"
  url "https://github.com/mdsauce/schelper/archive/v1.0.4.tar.gz"
  sha256 "8db455d07ec47da53aa4e791fe6b9de7695cf63330bcc9d120d0d91d7f5a063d"
  depends_on "go" => :build
  version 1.0.4

  def install
    system "go", "build", "-ldflags, "-X github.com/mdsauce/schelper/cmd.CurVersion=1.0.4", " "-o", bin/"schelper", "."
  end

  test do
    system "#{bin}/schelper", --help, ">", "output.txt"
    assert_predicate ./"output.txt", :exist?
  end
end