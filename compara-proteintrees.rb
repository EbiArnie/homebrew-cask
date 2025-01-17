#Template generated on 2019-10-14 12:42:01 +0100
#Do not edit this file. Modify the relevant config and regenerate

require 'digest'

class ComparaProteintrees < Formula
  url 'file://'+File.expand_path(__FILE__)
  desc 'Dependencies for the ComparaProteintrees formula'
  sha256 Digest::SHA256.file(File.expand_path(__FILE__)).hexdigest
  version '11'

  depends_on 'r'
  depends_on 'ensembl/external/hmmer'
  depends_on 'ensembl/external/hmmer2'
  depends_on 'ensembl/external/blast'
  depends_on 'ensembl/external/mafft@7.427'
  depends_on 'ensembl/external/kalign'
  depends_on 'ensembl/external/muscle'
  depends_on 'ensembl/external/clustal-w'
  depends_on 'ensembl/external/t-coffee'
  depends_on 'ensembl/ensembl/hclustersg'
  depends_on 'ensembl/ensembl/treebest'
  depends_on 'ensembl/external/quicktree'
  depends_on 'ensembl/ensembl/paml43'
  depends_on 'ensembl/ensembl/ktreedist'
  depends_on 'ensembl/ensembl/raxml-get-patterns'
  depends_on 'ensembl/ensembl/noisy'
  depends_on 'ensembl/ensembl/notung'
  depends_on 'ensembl/external/fasttree'
  depends_on 'ensembl/ensembl/prottest3'
  depends_on 'ensembl/external/trimal'
  depends_on 'ensembl/ensembl/cafe'
  depends_on 'ensembl/external/prank'
  depends_on 'ensembl/external/cd-hit'
  depends_on 'ensembl/ensembl/raxml'
  depends_on 'ensembl/ensembl/examl'
  depends_on 'ensembl/ensembl/pantherscore'
  depends_on 'ensembl/ensembl/bioperl-run-169'

  def install
    File.open('compara-proteintrees', 'w') { |file|
      file.write '#!/bin/sh'+"\n"
      deps.each do | dep |
        f = dep.to_formula
        file.write "echo "+[f.full_name, f.version, f.prefix].join("\t")+"\n"
      end
    }
    bin.install 'compara-proteintrees'
  end
end
    
