class Matreplab < Formula
  include Language::Python::Virtualenv

  desc "an improved matlab -nodesktop"
  homepage "https://github.com/RobinTournemenne/matREPLab"
  url "https://github.com/RobinTournemenne/homebrew-matreplab/raw/homebrew/dist/matreplab-0.6.tar.gz"
  sha256 "f93684755394a72cac3699c556cd9995b4168c9ed1f2889646321d81a51f7389"
  version "0.6"

  depends_on "python"

  resource "pathlib" do
    url "https://files.pythonhosted.org/packages/ac/aa/9b065a76b9af472437a0059f77e8f962fe350438b927cb80184c32f075eb/pathlib-1.0.1.tar.gz"
    sha256 "6940718dfc3eff4258203ad5021090933e5c04707d5ca8cc9e73c94a7894ea9f"
  end

  resource "pexpect" do
    url "https://files.pythonhosted.org/packages/e5/9b/ff402e0e930e70467a7178abb7c128709a30dfb22d8777c043e501bc1b10/pexpect-4.8.0.tar.gz"
    sha256 "fc65a43959d153d0114afe13997d439c22823a27cefceb5ff35c2178c6784c0c"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/69/19/3aa4bf17e1cbbdfe934eb3d5b394ae9a0a7fb23594a2ff27e0fdaf8b4c59/prompt_toolkit-3.0.5.tar.gz"
    sha256 "563d1a4140b63ff9dd587bda9557cffb2fe73650205ab6f4383092fb882e7dc8"
  end

  resource "ptyprocess" do
    url "https://files.pythonhosted.org/packages/7d/2d/e4b8733cf79b7309d84c9081a4ab558c89d8c89da5961bf4ddb050ca1ce0/ptyprocess-0.6.0.tar.gz"
    sha256 "923f299cc5ad920c68f2bc0bc98b75b9f838b93b599941a6b63ddbc2476394c0"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/6e/4d/4d2fe93a35dfba417311a4ff627489a947b01dc0cc377a3673c00cf7e4b2/Pygments-2.6.1.tar.gz"
    sha256 "647344a061c249a3b74e230c739f434d7ea4d8b1d5f3721bc0f3558049b38f44"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/25/9d/0acbed6e4a4be4fc99148f275488580968f44ddb5e69b8ceb53fc9df55a0/wcwidth-0.1.9.tar.gz"
    sha256 "ee73862862a156bf77ff92b09034fc4825dd3af9cf81bc5b360668d425f3c5f1"
  end

  # def install
  #   # Create a virtualenv in `libexec`. If your app needs Python 3, make sure that
  #   # `depends_on "python"` is declared, and use `virtualenv_create(libexec, "python3")`.
  #   venv = virtualenv_create(libexec, "python3")
  #   # Install all of the resources declared on the formula into the virtualenv.
  #   venv.pip_install resources
  #   # `pip_install_and_link` takes a look at the virtualenv's bin directory
  #   # before and after installing its argument. New scripts will be symlinked
  #   # into `bin`. `pip_install_and_link buildpath` will install the package
  #   # that the formula points to, because buildpath is the location where the
  #   # formula's tarball was unpacked.
  #   venv.pip_install_and_link buildpath
  # end
  def install
    virtualenv_install_with_resources
  end
end