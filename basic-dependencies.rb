#Template generated on 2016-07-28 13:53:03 +0100
#Do not edit this file. Modify the relevant config and regenerate
require 'digest'
class BasicDependencies < Formula
  url 'file://'+File.expand_path(__FILE__)
  desc 'Dependencies for the BasicDependencies formula'
  sha256 Digest::SHA256.file(File.expand_path(__FILE__)).hexdigest
  version '4'

  depends_on 'git'

  depends_on 'ack'

  depends_on 'jdk'

  depends_on 'bzip2'

  depends_on 'readline'

  depends_on 'sqlite'

  depends_on 'berkeley-db'

  depends_on 'ensembl/ensembl/gdbm-compat'

  def install
    File.open('basic-dependencies', 'w') { |file|
      file.write '#!/bin/sh'+"\n"
      deps.each do | dep |
        f = dep.to_formula
        file.write "echo "+[f.full_name, f.version, f.prefix].join("\t")+"\n"
      end
    }
    bin.install 'basic-dependencies'
  end
end
    