FeynmanDiagrams
===============

======To compile======
latex hggTT.tex
mpost hggTT_diag.mp
latex hggTT.tex
dvips -E hggTT.dvi -o hggTT.eps
epstopdf hggTT.eps


======Example diagram=======
\documentclass{article}
\usepackage{feynmp}
\pagestyle{empty} %Takes away pagenumbers etc.
\begin{document}

\unitlength = 1mm
\begin{fmffile}{analisi_diag} %Creating a diagram called "my_process_diag"
\begin{fmfchar*}(40,25)%(x.y) sono la grandezza del diagramma
%Particelle stato iniziale(i) e finale (o)
\fmfleft{i1,i2} %particelle nello stato iniziale {id1,id2,....}
\fmfright{o1,o2} \fmflabel{$\bar{T}$}{o1} \fmflabel{$T$}{o2} 
% ||^ particelle stato finale, con label. Potresti farlo anche al momento della costruzione delle linee, ma 
% in questo modo i label sono molto meglio piazzati

%comincia a chiudere le linee e costruire il diagramma
\fmf{gluon}{i1,v1,i2} %c'è un gluone che da i1 passa per il vertice v1 e va in i2 (quindi una forma a > nello stato iniziale
\fmf{gluon}{v1,v2} %c'è un gluone che fa il propagatore tra i vertici v1 e v2
\fmf{fermion}{o1,v2}% il senso della freccia è dato dall'ordine dei vertici 
%\fmf{plain}{vx,v2} %questa linea in più serve per fare più lunga la freccia e piazzare il label
%n.b: destra e sinistra sono stabiliti rispetto al senso della freccia
%\fmf{plain}{v2,vy} %questa linea in più serve per fare più lunga la freccia e piazzare il label
\fmf{fermion}{v2,o2} %% questo è il T$


%\fmfdot{v1,v2}% questo decide quali vertici abbiamo un punto marcato
\end{fmfchar*}
\end{fmffile}

\end{document}