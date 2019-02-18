#Template generated on 2019-02-13 10:45:03 +0000
#Do not edit this file. Modify the relevant config and regenerate

require 'digest'

class WebInternal < Formula
  url 'file://'+File.expand_path(__FILE__)
  desc 'Dependencies for the WebInternal formula'
  sha256 Digest::SHA256.file(File.expand_path(__FILE__)).hexdigest
  version '3'

  depends_on 'ruby'
  depends_on 'ensembl/ensembl/ensembl-git-tools'
  depends_on 'plenv'
  depends_on 'libxml2'
  depends_on 'socat'
  depends_on 'xerces-c'
  depends_on 'corkscrew'
  depends_on 'screen'
  depends_on 'daemonize'

  def install
    File.open('web-internal', 'w') { |file|
      file.write '#!/bin/sh'+"\n"
      deps.each do | dep |
        f = dep.to_formula
        file.write "echo "+[f.full_name, f.version, f.prefix].join("\t")+"\n"
      end
    }
    bin.install 'web-internal'
  end
end
    