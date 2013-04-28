require 'formula'

class AaronGrc < Formula
  homepage 'http://korpus.juls.savba.sk/~garabik/software/grc.html'
  url 'https://github.com/aaronjgreenberg/grc.git'
  version '3'

  def install
    inreplace ['bin/grc', 'share/man/man1/grc.1'], '/etc', etc
    inreplace ['bin/grcat', 'share/man/man1/grcat.1'], '/usr/local', prefix

    bin.install %w[bin/grc bin/grcat]
    man1.install %w[share/man/man1/grc.1 share/man/man1/grcat.1]
  end
end
