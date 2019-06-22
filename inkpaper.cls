\NeedsTeXFormat{LaTeX2e}

\ProvidesPackage{inkpaper}[2019/5/26 v 0.01 Paper template.]

\LoadClass[UTF8,fancyhdr,twocolumn]{ctexart}

\RequirePackage{amsthm,amsfonts,siunitx}
\RequirePackage{etoolbox,xstring,mfirstuc,textcase}
\RequirePackage{asymptote}
\RequirePackage{newtxtext,newtxmath}
\RequirePackage{abstract}
\RequirePackage{cite}
\RequirePackage[colorlinks,linkcolor=blue]{hyperref}
\renewcommand{\abstractnamefont}{\normalfont\bfseries}
\renewcommand{\abstractnamefont}{\normalfont}
\makeatletter
\newtoks\entitle
\renewcommand*\maketitle{%
	\thispagestyle{empty}
	\let\footnotesize\small
	%\let\footnoterule\hrule\vspace{5pt}
    \let \footnote \thanks
    \twocolumn[
	\begin{center}
        {\LARGE \@title \par}
        \vspace{2pt}
        {\Large \textbf{\MakeUppercase{\the\entitle}} \par}
        \vspace{5pt}
        {\@author \par}
    \end{center}
	]
	\@thanks
	\vfil\null
	\setcounter{footnote}{0}%
	\cleardoublepage
 \global\let\thanks\relax
 \global\let\maketitle\relax
 \global\let\@thanks\@empty
 \global\let\@author\@empty
 \global\let\@date\@empty
 \global\let\@title\@empty
 \global\let\title\relax
 \global\let\author\relax
 \global\let\date\relax
 \global\let\and\relax

}
\ctexset{
    section = {
        number=\arabic{section},
        name=\S,
        format+=\zihao{-4}
    },
    subsection = {
        number=\Roman{subsection},
        format = \raggedright\zihao{-4}\textit,
        aftername = {.}
    },
    subsubsection = {
        number=\roman{subsubsection},
        format=\raggedright\zihao{-4}\textit,
        name={(,)}
    }
}
\RequirePackage{fancyhdr}
\fancyhf{}
\lhead{\textnormal{\kaishu\rightmark}} 
\rhead{--\ \thepage\ --} 
\pagestyle{fancy} 
% \sectionmark 的重定义需要在 \pagestyle 之后生效 
\renewcommand\sectionmark[1]{% 
\markright{\CTEXifname{\CTEXthesection——}{}#1}} 
\theoremstyle{plain}% default
	\newtheorem{theorem}{定理}[section] %
	\newtheorem{lemma}[theorem]{引理} %
	\newtheorem{proposition}[theorem]{命题} %
	\newtheorem*{corollary}{推论} %
	\theoremstyle{definition} %
	\newtheorem{definition}{定义}[section] %
	\newtheorem{conjecture}{猜想}[section] %
    \newtheorem{example}{例}[section] %
    \newtheorem{problem}{题}[section]
    \newtheorem*{solution}{解}
    \newtheorem*{problema}{引题}
	\theoremstyle{remark} %
	\newtheorem*{remark}{\normalfont\bfseries 评论} %
	\newtheorem*{note}{\normalfont\bfseries 注} %
    \newtheorem{case}{\normalfont\bfseries 案例} %
    
	\renewcommand*{\proofname}{\normalfont\bfseries\color{black}证明} %
    \renewcommand*{\qed}{\begin{flushright}
        $\square$
    \end{flushright}}
    
    \AtEndEnvironment{solution}{\begin{flushright}
        \qed
    \end{flushright}}
\makeatother