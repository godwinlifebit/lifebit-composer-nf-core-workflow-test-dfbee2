# nf-core.Workflow.Test

## Description



## Components

The present workflow is composed by the following unique components (Note that some components may be repeated):

### nf-core_abacas

**Description**: contiguate draft genome assembly\
**Inputs**: 2\
**Outputs**: 2\
**Parameters**: 0\
**Authors**: @joseespinosa, @drpatelh

### nf-core_abricate/run

**Description**: Screen assemblies for antimicrobial resistance against multiple databases\
**Inputs**: 1\
**Outputs**: 2\
**Parameters**: 0\
**Authors**: @rpetit3

### nf-core_adapterremoval

**Description**: Trim sequencing adapters and collapse overlapping reads\
**Inputs**: 2\
**Outputs**: 8\
**Parameters**: 0\
**Authors**: @maxibor, @jfy133

## Inputs

- `--abacas_1.meta_scaffold`: 
- `--abacas_1.fasta`: 
- `--adapterremoval_1.meta_reads`: 
