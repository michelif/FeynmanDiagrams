#!/bin/bash
latex hggTT.tex
mpost hggTT_diag.mp
latex hggTT.tex
dvips -E hggTT.dvi -o hggTT.eps
epstopdf hggTT.eps
open hggTT.pdf