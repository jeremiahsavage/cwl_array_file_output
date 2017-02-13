#!/usr/bin/env cwl-runner

cwlVersion: v1.0

class: Workflow

inputs:
  - id: bam_path
    type: File

outputs:
  - id: bamtoreadgroup_output
    type:
      type: array
      items: File
    outputSource: bamtoreadgroup/output_readgroup

steps:
  - id: bamtoreadgroup
    run: unix_bamreadgroup_cmd.cwl
    in:
      - id: bam_path
        source: bam_path
    out:
      - id: output_readgroup
