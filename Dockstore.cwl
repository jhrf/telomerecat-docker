#!/usr/bin/env cwl-runner

class: CommandLineTool
doc: "A docker container for the telomerecat tool" 
id: "Telomerecat"
label: "Telomerecat tool"

cwlVersion: v1.0

inputs:
    bam_input:
        type: File
        doc: "Input BAM file. No sorting or index required"

outputs:
    telbam_output:
        type: File
        doc: "A BAM file containing only telomere reads"

    csv_output:
        type: File
        doc: "A CSV containing estimation of Length for the input BAM files"

dct:creator:
  foaf:name: JHR Farmery
  foaf:mbox: "jhrf2@cam.ac.uk"

baseCommand: ["bash", "/usr/local/bin/bamstats"]
