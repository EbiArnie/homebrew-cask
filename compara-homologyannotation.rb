#Template generated on 2021-03-11 16:03:44 +0000
#Do not edit this file. Modify the relevant config and regenerate

require 'digest'

class ComparaHomologyannotation < Formula
  url 'file://'+File.expand_path(__FILE__)
  desc 'Dependencies for the ComparaHomologyannotation formula'
  sha256 Digest::SHA256.file(File.expand_path(__FILE__)).hexdigest
  version '1'

  depends_on 'ensembl/external/blast'
  depends_on 'ensembl/external/diamond'

  def install
    File.open('compara-homologyannotation', 'w') { |file|
      file.write '#!/bin/sh'+"\n"
      deps.each do | dep |
        f = dep.to_formula
        file.write "echo "+[f.full_name, f.version, f.prefix].join("\t")+"\n"
      end
    }
    bin.install 'compara-homologyannotation'
  end
end
    