nextflow.enable.dsl=2

include { abacas_1 } from './modules/abacas_1/module.nf'
include { abricate_run_1 } from './modules/abricate_run_1/module.nf'
include { adapterremoval_1 } from './modules/adapterremoval_1/module.nf'

workflow {
input1 = Channel.fromPath(params.abacas_1.meta_scaffold).splitCsv(sep: ';').map { row -> tuple(evaluate(row[0]), row[1]) }
input2 = Channel.fromPath(params.abacas_1.fasta)
input3 = Channel.fromPath(params.adapterremoval_1.meta_reads).splitCsv(sep: ';').map { row -> tuple(evaluate(row[0]), row[1]) }
abacas_1(input1, input2)
abricate_run_1(abacas_1.out.output1)
adapterremoval_1(input3, abricate_run_1.out.output2)
}
