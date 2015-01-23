\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{constitution}[2009/05/15 v0.0.1 Document class for typesetting a constitution]
\LoadClass{report}
\RequirePackage[letterpaper,margin=1in]{geometry}
\RequirePackage[colorlinks,linkcolor=blue]{hyperref}
%\usepackage{hyperref}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{paralist}


%\newcommand{\bylaw}[1]{\part{#1} \setcounter{section}{0}}
%\renewcommand{\partname}{Bylaw}\

\usepackage{hyperref}
\usepackage{tgchorus}
\usepackage{chancery}
\usepackage[T1]{fontenc}
\renewcommand*\rmdefault{tgchorus}
\renewcommand\rmdefault{tgchorus}

\newcommand*\chancery{\fontfamily{qzc}\fontsize{16pt}{12pt}\fontseries{b}\fontshape{sc}\selectfont} 


%\titleclass\article{straight}[\part]
%{0pt}{\filcenter\normalfont\bfseries}
%\titlespacing*{\article}{0mm}{*4}{*2.3}[0mm]

\titleclass\article{straight}[\part]
\titleformat{\article}[display]{\filcenter\normalfont\bfseries}{
\chancery{ \LARGE{ Article } } \thearticle}{0pt}{\filcenter\normalfont\bfseries}
\titlespacing*{\article}{0mm}{*4}{*2.3}[0mm]
\newcounter{article}
\renewcommand\thearticle{\Roman{article}}

\titlecontents{article}
[1.5em]
{\bfseries}
{\contentslabel{2.3em}}
{\hspace*{-2.3em}}
{\titlerule*[1pc]{.}\contentspage}

%\makeatletter
%\renewcommand\section{\@startsection
%{section}{1}{0mm}%
%{-\baselineskip}%
%{-0.5\baselineskip}%
%{\normalfont\normalsize\bfseries}}%
%\makeatother


\makeatletter
\@addtoreset{section}{article}
\makeatother
\titleformat{\section}[runin]{\normalfont\scshape}
{Section \thesection.}{.5em}{}[\quad]

\renewcommand{\thesection}{\arabic{section}} 
\renewcommand{\theenumi}{\alph{enumi}}
\renewcommand{\theenumii}{\roman{enumii}}

\usepackage[none]{hyphenat} % prevent word breaks on newlines
%\setlength\parindent{24pt} % for indenting new paragraphs
\renewcommand{\indent}{\quad\quad}

%http://tex.stackexchange.com/questions/11444/how-to-format-the-chapter-heading
\makeatletter
\def\thickhrule{\leavevmode \leaders \hrule height 1ex \hfill \kern \z@}
\def\position{\centering}
%% Note the difference between the commands the one is 
%% make and the other one is makes
\usepackage[english]{babel}
\usepackage{yfonts} %http://tex.stackexchange.com/questions/60360/how-to-use-fraktur-gothic-fonts-in-text-modehttp://tex.stackexchange.com/questions/60360/how-to-use-fraktur-gothic-fonts-in-text-mode
 
\def\@makeschapterhead#1{%
  \vspace*{-33\p@}%
  {\parindent \z@ \position \reset@font
        {\Huge \scshape \vphantom{\thechapter}}
        \par\nobreak
        \vspace*{-20\p@}%
        \interlinepenalty\@M
        %\thickhrule
        \par\nobreak
        \vspace*{2\p@}%
        {\Huge \bfseries \textswab{#1}\par\nobreak}
        \par\nobreak
        \vspace*{2\p@}%
        %\thickhrule
    \vskip 33\p@
  }}
  