
%\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nisebook}[2001/06/01 ACM SIGGRAPH]
\LoadClass{book}

\usepackage{amssymb}
\usepackage{babel}
\usepackage[T1]{fontenc}
\usepackage[latin9]{inputenc}
\usepackage{float}
\usepackage{url}
\usepackage[pdftex]{graphicx}
\usepackage{sidecap} %% captions right beside image
%\usepackage[authoryear]{natbib}
\usepackage{pdfpages}
\usepackage{comment}

%%%% XETEX Typesetting / Font
\usepackage{xltxtra} % unicode support
\setmainfont[Mapping=tex-text]{DroidSans}% }%{Gentium Book Basic}
% good for printing: {Cardo}
%ą

%%% Zeilenabstand
\linespread{1.25}


% Seitenabmessungen
\usepackage[vcentering,dvips=false]{geometry}

\geometry{
%	papersize={140mm,210mm},
	papersize={210mm,297mm},
%	width={104mm},
%	height={174mm},
	nohead,
%	pdftex,
	top={35mm},
	bottom={40mm},
%	oneside,
	inner={30mm},
	outer={30mm},
	portrait
}


%\geometry{showframe}

\usepackage{sectsty}
\sectionfont{\raggedright\large}

%% Chapter Design
\usepackage{titlesec}
\titleformat{\chapter}[display]{}{\large\chaptername \ \thechapter}{1pc}{\raggedright\huge}

%%


%%%%%%%%% page head and foot
\usepackage{fancyhdr}
\pagestyle{empty}
\fancyhf{}
\fancyhead[LE,CE,RE,LO,CO,RO]{}
\fancyfoot[LE,RO]{\thepage}

%\fancyfoot[CE,CO]{}

\fancypagestyle{plain}{% 
   \fancyfoot{}     % clear all the header fields 
   \fancyfoot[R]{\small\thepage}
   \fancyfoot[L]{\small\thepage} 
   \fancyfoot[RE]{\small\textsc Niels Seidel}
   \fancyfoot[LO]{\small\textsc \leftmark}%\rightmark}
} 
\pagestyle{plain} 
 %\pdfcompresslevel=9     % compression level for text and image;
 
%%bugy
\usepackage{fancyvrb}



% schusterjungen / hurensöhne
\widowpenalty=300
\clubpenalty=300
%\setlength{\parskip}{3ex plus 2ex minus 2ex}
 

\renewcommand{\headrulewidth}{0pt}

%\parskip = 0.6 in
\parindent = 0 in


%%%%%%%%%%%%

%% schnittkreuze
%\DeclareOption{neisseVerlag}{\CROP@size{140truemm}{210truemm}}
%\usepackage[frame,height=210truemm,width=140truemm,center]{crop}

%%%%
\usepackage[colorlinks=true,linkcolor=blue, linktocpage=true]{hyperref}


%%%

\usepackage[cam,a4,center]{crop}
\usepackage{pdflscape}





\usepackage{graphicx}
\usepackage{color}
\usepackage{rotating}
%% table stuff
\usepackage{array}
\usepackage{booktabs}
\usepackage{tabularx}
\usepackage{longtable}
\usepackage{multirow}
\usepackage{multicol}
\usepackage{dcolumn}
\usepackage[flushmargin]{footmisc}
\usepackage{fancybox}
\usepackage{framed}
\usepackage{lscape}

%% index
\usepackage{makeidx}
\usepackage{multind}
\makeindex{p}
\makeindex{o}

\renewcommand{\see}[2]{~siehe:~#1.~}
\renewcommand{\seename}[2]{}



%% define colored boxes for testimonies
\usepackage{framed}
\definecolor{nise1}{RGB}{80,80,80}
\definecolor{nise2}{RGB}{140,140,140}

\definecolor{nise22}{RGB}{0,33,66}
\definecolor{nise3}{RGB}{220,220,220}
\renewenvironment{leftbar}{%
  \def\FrameCommand{\hspace{-12pt}\color{nise22}\vrule width 4pt \hspace{4pt}}%
  
	\vspace{-4pt}\MakeFramed {\advance\hsize-\width {\color{nise22} \FrameRestore}}}%
 {\endMakeFramed}
 
\usepackage{footnote} 
\makesavenoteenv{leftbar}
 
%% special frame
\newenvironment{fshaded}{%
  \def\FrameCommand{
  	\hspace{-12pt} \fboxsep=10pt \fboxrule=0pt \fcolorbox{black}{nise3} 
  }%
	\MakeFramed {\advance\hsize-\width {\FrameRestore} }
	}%
{\endMakeFramed}


	

%% multible lists of ...
\usepackage{tocloft}

%% multiple ref
\usepackage{smartref}



%% define background color of parboxes
\definecolor{shadecolor}{gray}{.97}



%%% numbering not deeper the lever 2
\setcounter{secnumdepth}{1}
%%%%%%%%% footnote
\renewcommand{\footnoterule}{\rule{\textwidth}{1 pt}}
\setlength{\footnotesep}{10 pt}

\usepackage[flushmargin]{footmisc}
\makeatletter
\renewcommand\footnoterule{%
  \vspace{1em}%   <-- one line space between text and footnoterule
  \kern3\p@\hrule\@width\columnwidth\hspace{10pt}
  \kern2.6\p@}
\makeatother



%%%%%%%%% multirow table
\newcommand{\armultirow}[3]{%
\multicolumn{#1}{#2}{%
\begin{picture}(0,0)
\put(0,0){%
\begin{tabular}[t]{@{}#2@{}}
	#3
\end{tabular}
}
\end{picture}
}}




\renewenvironment{quote}{%
  \list{}{\rightmargin\leftmargin}%
   	\item\relax
   }
  {\endlist
  }



%%%%%%%
%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% title
\makeatletter
\def\clap#1{\hbox to 0pt{\hss #1\hss}}%
\def\ligne#1{%
  \hbox to \hsize{%
    \vbox{\centering #1}}}%
\def\haut#1#2#3{%
  \hbox to \hsize{%
    \rlap{\vtop{\raggedright #1}}%
    \hss
    \clap{\vtop{\centering #2}}%
    \hss
    \llap{\vtop{\raggedleft #3}}}}%
\def\bas#1#2#3{%
  \hbox to \hsize{%
    \rlap{\vbox{\raggedright #1}}%
    \hss
    \clap{\vbox{\centering #2}}%
    \hss
    \llap{\vbox{#3}}}}%
\def\maketitle{%
  \thispagestyle{empty}\vbox to \vsize{%
    \haut{}{\@blurb}{}
    \vfill
    \ligne{\huge \@title}
    \vspace{25mm}
    
    \ligne{ \Large \@author}
   % \vspace{1mm}\ligne{\texttt{<\@email>}}
    \vspace{1cm}
    \vfill
    \vfill
    %\bas{}{\@location, \@date}{}
    }%
  %%\cleardoublepage

  }
\def\date#1{\def\@date{#1}}
\def\author#1{\def\@author{#1}}
\def\title#1{\def\@title{#1}}
\def\location#1{\def\@location{#1}}
\def\blurb#1{\def\@blurb{#1}}
\def\email#1{\def\@email{#1}}
\date{\today}
\author{Niels Seidel}
\title{}
\location{Dresden}
\blurb{}
%\email{no email address}
\makeatother
%%%%%%%%%%%%%%%%%%%%%%
%% bibligraphy
\renewenvironment{thebibliography}[1]{%
\section*{#1}%
\addcontentsline{toc}{section}{#1}%
\begingroup\def\baselinestretch{1}%
\normalsize
\begin{list}{[\arabic{enumi}]}{%
    \settowidth\labelwidth{[#1]}\leftmargin\labelwidth
    \advance\leftmargin\labelsep\usecounter{enumi}}}%
        {\end{list}\endgroup}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\makeatletter


\makeatother





%% define multiple lists of ... (pictures, tables, maps)

%% Kartenverzeichnis
\newcommand{\listmymapsname}{}
\newcommand{\mymaps}[3][]{%
\refstepcounter{mymaps}
\par\noindent{\small Karte \themymaps: #2} 
\ifx #1\undefined \else \footnote{#1}\fi
\addcontentsline{ans}{mymaps}{\protect\numberline{\themymaps}\hspace{15pt}#3}\par}
\newlistof[chapter]{mymaps}{ans}{\listmymapsname}


%% Abbildungsverzeichnis
% 1:footnote, 2:caption, 3:list_of_pics_name
\newcommand{\listmypicsname}{Abbildungsverzeichnis}
\newcommand{\mypics}[3][]{%
{\refstepcounter{mypics}}
\vspace{-10pt}
\par\noindent{\small Bild \themypics: #2}\ifx #1\undefined\else\addtocounter{footnote}{1}\footnotemark[\value{footnote}]
	%\addtocounter{footnote}{1}
	\footnotetext[\value{footnote}]{#1}
\fi
\vspace{15pt}
\addcontentsline{pics}{mypics}{\protect\numberline{\themypics}\hspace{15pt}#3}\par
}
\newlistof[chapter]{mypics}{pics}{\listmypicsname}


%% Tabellenverzeichnis
\newcommand{\listmytablesname}{Tabellenverzeichnis}
\newcommand{\mytables}[3]{%
\refstepcounter{mytables}
\par\noindent{\small Tabelle \themytables: #1 \footnote{#2}}
\addcontentsline{tab}{mytables}{\protect\numberline{\themytables}\hspace{15pt}#3}\par
}
\newlistof[chapter]{mytables}{tab}{\listmytablesname}


% 1:label, 2:bildname, 3:footnote, 4:caption, 5:list_of_pics_name, 6: scale
%% pics
\newcommand{\myfigure}[6][]{%
\vspace{10pt}
\begin{minipage}{\linewidth}
	\setcounter{mpfootnote}{\value{footnote}}
	\renewcommand{\thempfootnote}{\arabic{mpfootnote}}
\begin{flushleft}
\setlength{\fboxsep}{0pt}
\def\zeroo{0} 
\if #6\zeroo
	\fbox{\includegraphics[width=.99\linewidth, angle=0]{images/#2}}
\else 
	\fbox{\includegraphics[scale=#6, angle=0]{images/#2}}
\fi

\ifx #4\undefined 
	%%
\else
	{{\refstepcounter{mypics}}
	%\vspace{-10pt}
	\par\noindent{\small Bild} \themypics: {\small #4}\ifx #3 \else {\addtocounter{footnote}{1}\small\footnotemark[\value{footnote}]}\fi
	\addcontentsline{pics}{mypics}{\protect\numberline{\themypics}\hspace{15pt}#5}\par}
\fi
\ifx #1\undefined 
	%
\else 	\label{#1}
\fi
\end{flushleft}
\setcounter{footnote}{\value{mpfootnote}}
\end{minipage}
\ifx #3 \else
	\addtocounter{footnote}{1}
	\footnotetext[\value{footnote}]{#3}
\fi
\vspace{15pt}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%
%% maps
\newcommand{\mymapfigure}[7][]{%
\vspace{10pt}
\begin{minipage}{\linewidth}
	\setcounter{mpfootnote}{\value{footnote}}
	\renewcommand{\thempfootnote}{\arabic{mpfootnote}}
\begin{flushleft}
\setlength{\fboxsep}{0pt}
%\fbox{\includegraphics[scale=#6]{#2}}
\def\zeroo{0} 
\if #6\zeroo
	\fbox{\includegraphics[width=.99\linewidth]{images/#2}}
\else
	\fbox{\includegraphics[scale=#6]{images/#2}}
\fi

\ifx #4%\undefined 
%\vspace{0pt}
\else
	\ifx #7
		\vspace{3pt}
	\else
		%\vspace{-10pt}
	\fi
	\refstepcounter{mymaps}\par\noindent{\small Karte} \themymaps: {\small #4}\ifx #3 \else {\addtocounter{footnote}{1}\small\footnotemark[\value{footnote}]}\fi
	\addcontentsline{ans}{mymaps}{\protect\numberline{\themymaps}\hspace{15pt}#5}\par%
\fi
\end{flushleft}
\setcounter{footnote}{\value{mpfootnote}}
\end{minipage}
\ifx #1\undefined \else \label{#1} \fi
\ifx #3 \else
	\addtocounter{footnote}{1}
	\footnotetext[\value{footnote}]{#3}
\fi
\vspace{15pt}

}

\addtoreflist{mypics}
\addtoreflist{mymaps}
\addtoreflist{mytables}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% User specified LaTeX commands.
%\bibpunct{(}{)}{;}{a}{}{,} 

\makeatother





