require 'formula'

class AaronGrc < Formula
  homepage 'http://korpus.juls.savba.sk/~garabik/software/grc.html'
  url 'https://github.com/aaronjgreenberg/grc/archive/master.zip'
  sha1 '381f686d014c005c74fc22d87b27302551ff50be'
  version '2.0.0'

  def install
    inreplace ['bin/grc', 'share/man/man1/grc.1'], '/etc', etc
    inreplace ['bin/grcat', 'share/man/man1/grcat.1'], '/usr/local', prefix

    bin.install %w[bin/grc bin/grcat]
    man1.install %w[share/man/man1/grc.1 share/man/man1/grcat.1]
  end

end
