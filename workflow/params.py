# CELLTYPES = ["GM12878"] #
CELLTYPES = ["HepG2", "K562", "GM12878"]
HISTONES = ["H3K4me1", "H3K4me3", "H3K27me3",
            "H3K36me3", "H3K9me3", "H3K27ac", "H3K9ac", "DNase"]
PR_TPM = [0.0, 0.25, 0.5, 1.0, 2.0, 2.5, 5.0, 10.0, 20.0]
UNIFORM_REL_CONF = [
    (1.50, 50.0),
    (1.50, 250.0),
    (1.50, 100.0),
    (1.50, 25.0),
    (1.50, 10.0),
    (1.50, 5.0),
    (1.25, 50.0),
    (1.00, 50.0),
    (0.85, 50.0),
]


CELLTYPE_ACCESSION = {
    "K562": {
        "H3K4me1": "ENCFF444SGK",
        "H3K4me3": "ENCFF712XRE",
        "H3K27me3": "ENCFF928NWQ",
        "H3K36me3": "ENCFF440XMD",
        "H3K9me3": "ENCFF812HRW",
        "H3K27ac": "ENCFF779QTH",
        "H3K9ac": "ENCFF866KTJ",
        "DNase": "ENCFF868NHV"
    },
    "HepG2": {
        "H3K4me1": "ENCFF058GCZ",
        "H3K4me3": "ENCFF736LHE",
        "H3K27me3": "ENCFF529HLC",
        "H3K36me3": "ENCFF247LOP",
        "H3K9me3": "ENCFF881LOL",
        "H3K27ac": "ENCFF022TZG",
        "H3K9ac": "ENCFF053ROV",
        "DNase": "ENCFF113VII"
    },
    "GM12878": {
        "H3K4me1": "ENCFF564KBE",
        "H3K4me3": "ENCFF776DPQ",
        "H3K27me3": "ENCFF919DOR",
        "H3K36me3": "ENCFF831WJT",
        "H3K9me3": "ENCFF776OVW",
        "H3K27ac": "ENCFF180LKW",
        "H3K9ac": "ENCFF599TRR",
        "DNase": "ENCFF960FMM"
    }
}

CELLTYPE_CTSS = {
    "K562": {
        "CNhs12334": "https://fantom.gsc.riken.jp/5/datafiles/reprocessed/hg38_v1/basic/human.cell_line.hCAGE/chronic%2520myelogenous%2520leukemia%2520cell%2520line%253aK562%2520ENCODE%252c%2520biol_rep1.CNhs12334.10824-111C5.hg38.nobarcode.ctss.bed.gz",
        "CNhs12335": "https://fantom.gsc.riken.jp/5/datafiles/reprocessed/hg38_v1/basic/human.cell_line.hCAGE/chronic%2520myelogenous%2520leukemia%2520cell%2520line%253aK562%2520ENCODE%252c%2520biol_rep2.CNhs12335.10825-111C6.hg38.nobarcode.ctss.bed.gz",
        "CNhs12336": "https://fantom.gsc.riken.jp/5/datafiles/reprocessed/hg38_v1/basic/human.cell_line.hCAGE/chronic%2520myelogenous%2520leukemia%2520cell%2520line%253aK562%2520ENCODE%252c%2520biol_rep3.CNhs12336.10826-111C7.hg38.nobarcode.ctss.bed.gz",
        "CNhs11250": "https://fantom.gsc.riken.jp/5/datafiles/reprocessed/hg38_v1/basic/human.cell_line.hCAGE/chronic%2520myelogenous%2520leukemia%2520cell%2520line%253aK562.CNhs11250.10454-106G4.hg38.nobarcode.ctss.bed.gz"
    },
    "HepG2": {
        "CNhs12328": "https://fantom.gsc.riken.jp/5/datafiles/reprocessed/hg38_v1/basic/human.cell_line.hCAGE/hepatocellular%2520carcinoma%2520cell%2520line%253a%2520HepG2%2520ENCODE%252c%2520biol_rep1.CNhs12328.10818-111B8.hg38.nobarcode.ctss.bed.gz",
        "CNhs12329": "https://fantom.gsc.riken.jp/5/datafiles/reprocessed/hg38_v1/basic/human.cell_line.hCAGE/hepatocellular%2520carcinoma%2520cell%2520line%253a%2520HepG2%2520ENCODE%252c%2520biol_rep2.CNhs12329.10819-111B9.hg38.nobarcode.ctss.bed.gz",
        "CNhs12330": "https://fantom.gsc.riken.jp/5/datafiles/reprocessed/hg38_v1/basic/human.cell_line.hCAGE/hepatocellular%2520carcinoma%2520cell%2520line%253a%2520HepG2%2520ENCODE%252c%2520biol_rep3.CNhs12330.10820-111C1.hg38.nobarcode.ctss.bed.gz"
    },
    "GM12878": {
        "CNhs12331": "https://fantom.gsc.riken.jp/5/datafiles/reprocessed/hg38_v1/basic/human.cell_line.hCAGE/B%2520lymphoblastoid%2520cell%2520line%253a%2520GM12878%2520ENCODE%252c%2520biol_rep1.CNhs12331.10821-111C2.hg38.nobarcode.ctss.bed.gz",
        "CNhs12332": "https://fantom.gsc.riken.jp/5/datafiles/reprocessed/hg38_v1/basic/human.cell_line.hCAGE/B%2520lymphoblastoid%2520cell%2520line%253a%2520GM12878%2520ENCODE%252c%2520biol_rep2.CNhs12332.10822-111C3.hg38.nobarcode.ctss.bed.gz",
        "CNhs12333": "https://fantom.gsc.riken.jp/5/datafiles/reprocessed/hg38_v1/basic/human.cell_line.hCAGE/B%2520lymphoblastoid%2520cell%2520line%253a%2520GM12878%2520ENCODE%252c%2520biol_rep3.CNhs12333.10823-111C4.hg38.nobarcode.ctss.bed.gz"
    }
}
