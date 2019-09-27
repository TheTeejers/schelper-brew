class Schelper < Formula
  desc "Analyze log files from Sauce Connect"
  homepage "https://github.com/mdsauce/schelper"
  url "https://github.com/mdsauce/schelper/archive/v1.1.1.tar.gz"
  sha256 "e277b37600b6e02ebae40c75c3847b8efcf2c7b6054dca644a48043efe32259f"
  depends_on "go" => :build
  version "1.1.1"

  def install
    system "go", "build", "-ldflags", "-X github.com/mdsauce/schelper/cmd.CurVersion=1.1.1", "-o", bin/"schelper", "."
  end

  test do
    system "#{bin}/schelper", --help, ">", "output.txt"
    assert_predicate ./"output.txt", :exist?
  end
end
