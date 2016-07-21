#!/bin/sh

curl -l ftp://ftp.ebi.ac.uk/pub/databases/chembl/ChEMBL-RDF/21.0/ |
  sed s,^,http://ftp.ebi.ac.uk/pub/databases/chembl/ChEMBL-RDF/21.0/, > /tmp/files

aria2c -j8 -x8 -d /data -i /tmp/files
