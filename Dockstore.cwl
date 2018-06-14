baseCommand: []
class: CommandLineTool
cwlVersion: v1.0
id: demosj
inputs:
  chromosome:
    default: '2'
    doc: Chromosome
    inputBinding:
      position: 2
      prefix: --chromosome
    type: string
  end:
    default: 47640088
    doc: End Position
    inputBinding:
      position: 4
      prefix: --end
    type: long
  start:
    default: 47602241
    doc: Start Position
    inputBinding:
      position: 3
      prefix: --start
    type: long
  vcf:
    doc: Crystal_Genetics_Cancer_Panel_V1.0_NA12878.vcf
    inputBinding:
      position: 1
      prefix: --vcf
    type: File
label: Test DEMO JShang
outputs:
  output:
    doc: Per-Sample Missingness
    outputBinding:
      glob: output/*
    type: File
requirements:
- class: DockerRequirement
  dockerOutputDirectory: /data/out
  dockerPull: pfda2dockstore/demosj:4
s:author:
  class: s:Person
  s:name: Justin Shang
