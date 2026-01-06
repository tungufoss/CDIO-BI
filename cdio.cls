%% CDIO Conference paper
%% Initial version by Joe Foley <foley AT RU dot IS>
%% First created on 2016-02-04
%% This code is distributed under the Perl Artistic License
%% http://language.per.com/misc/Artistic.html
%% Some code is derived from the IEEE LaTeX class, RU ad-hoc
%% wireless project labeling system, and RU CS M.Sc. Thesis and Report template

%% --------------- Identification ----------------------------
\newcommand{\fileversion@cdio}{v0.5}
\newcommand{\filedate@cdio}{2024/09/08}% must be YYYY/MM/DD!
\newcommand{\fileauthor@cdio}{Joseph Timothy Foley, foley AT RU dot IS}
\ProvidesClass{cdio}[\filedate@cdio by \fileauthor@cdio]
\NeedsTeXFormat{LaTeX2e}
%\typeout{CDIO conference format \fileversion@cdio from <\filedate@cdio>, by \fileauthor@cdio }

%% ---------------- Initial Code -----------------------------
%% Etoolbox for package and class writers
%% http://texdoc.net/texmf-dist/doc/latex/etoolbox/etoolbox.pdf
\RequirePackage{etoolbox}
%% \newbool{}, \ifbool{}
\RequirePackage{ifdraft}

% Better handling of arguments, particularly for defaults
\RequirePackage{xargs}

%% ---------------- Declaration of Options--------------------
%% Remember that we have \AtEndOfClass{},\AtEndOfPackage{}
%%     \AtBeginDocument{}, \AtEndDocument{}
%% If you want execution conditional on file existence
%%     \IfFileExists{filename}{true}{false}
%%     \InputIfFileExists{filename}{true}{false}
%% For error reporting
%%     \ClassError{class-name}{error-text}{help-text}
%%     \PackageError{class-name}{error-text}{help-text}

%% now we pass the remaining unused options to our parent class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
%% ---------------- Execution of Options -----------------------------
\ProcessOptions \relax % this stops searching for a * in
                       % \ProcessOptions*

%% Alternative way to subclass.  Disable the other option processing
%% if you enable it.  This will dump all options onto the parent class
%\ProcessOptions\LoadClassWithOptions{article}
%% ---------------- Package Loading -----------------------------
\LoadClass{article}  % our parent class.  Article is a little easier
                     % to work with than the report class.
\RequirePackage{ifxetex} % XeTeX can allow for nicer fonts
%% ---------------- XeTeX setup -----------------------------
%% Specification says to use Arial
%http://tex.stackexchange.com/questions/23957/how-to-set-font-to-arial-throughout-the-entire-document
%%  On debian systems:  apt-get install -y ttf-mscorefonts-installer
\ifxetex% %%Automatically UTF-8 compliant
  \relax
\else
  \ClassError{cdio}{This class file requires XeLaTeX}
\fi

%%%%%%%% We now assume XeLaTeX is running %%%%%%%%%%%%%%%%%%%%

\RequirePackage{fontspec} % font selecting commands
\RequirePackage{xunicode} % unicode character macros
\RequirePackage{xltxtra} % a few fixes and extras
\RequirePackage{calc}% math for lengths
\setmainfont[Mapping=tex-text]{Arial}
% \setmonofont{Courier New}
\setmonofont{Arial}% template has no monospace font

%% Load babel for language mappings
\RequirePackage[american]{babel}
\RequirePackage{csquotes}
%% Margins of 25.4mm (1in)
%% Footer: 12.5mm
%% Set left gutter at 0mm
%% Bottom includes the footer and needs to be bigger:  25.4mm+12.5mm=37.9mm
\RequirePackage[a4paper, margin=25.4mm, bottom=37.9mm, footskip=8.5mm]{geometry}

\RequirePackage{enumitem}
% use \setlist to apply global settings
% CDIO template wants no space between items
\setlist{noitemsep,topsep=0mm}

% Some useful fonts, particularly for listings
\RequirePackage{lipsum}
\RequirePackage{courier}

\RequirePackage{fancyhdr}
%% Nice options for tweaking the header and footer

\PassOptionsToPackage{pdftex}{graphicx}
%% We give the "final" option so that it always includes graphics
%% Take out "final" if you want draft mode to skip pics
\RequirePackage{graphicx}
\DeclareGraphicsExtensions{.pdf,.jpeg,.jpg,.png,.PDF,.JPEG,.JPG,.PNG,}
%% The extensions that it will search for as valid graphics files
%% We need To include the UPPERCASE versions For windows people

\graphicspath{{graphics/}{Graphics/}{./}}
%% This is a list of folders to search for graphics files to include
%% Each path should be in a {}.  
%% Make sure that the upper/lowercase of the letters matches the folder or
%% you may have weird problems with partners using other operating systems.
%% Note that you don't have to put the folder where the .tex file is, it is
%% included automatically, though it is bad practice to put your 
%% graphics there

\RequirePackage[spaces,hyphens,allowmove]{xurl}
%% The xurl package typesets urls and unix file paths.
%% It allows linebreaks at any character.
%% Warning: windows paths such as C:\window do not always work!

%% Adjust line spacing to match the MS Word template 2025: 1.8
%\linespread{1.08}% 

%% Now setup the fonts
% First save the current font size in case we need it later after it is changed
\newlength{\normaltextsize}
\setlength{\normaltextsize}{\f@size pt}

%% Font guide at
%% http://latex-project.org/guides/fntguide.pdf

%\renewcommand{\familydefault}{\sfdefault} % switch to \sfdefault if you want to force sanserif
%% \familydefault should be one of the short letter codes such as "lm" or "ptm"
%\renewcommand{\familydefault}{\rmdefault}

%\renewcommand{\seriesdefault}{m}
%% m  : medium
%% b  : bold
%% bx : bold extended
%% sb : semi bold
%% c  : condensed

%\renewcommand{\shapedefault}{n}
%% n  : upshape (normal)
%% it : italics
%% sl : slanted
%% sc : small caps

%%\fontsize{12pt}{14pt}  % args: fontsize, baselineskip (font+space)
%% normal sequence of increasing sizes:  5,7,8,9,10,12,14.4,17.28,20.74,24.88


%%  Specific fonts
%%  Note that you can leave off elements and it will use the last value set (or default??)
% \def\myfont{\fontencoding{T1}\fontfamily{lm}\fontseries{m}\fontshape{n}\fontsize{14pt}{16pt}\selectfont}
%  \fontsize{SIZE}{BASELINESKIP}

%% Outside PhD cover we hardcode for consistency
\def\titlefont{\fontseries{bx}\fontshape{n}\fontsize{14}{16}\selectfont}
\def\authorfont{\fontseries{bx}\fontshape{n}\fontsize{11}{11}\selectfont}
\def\footerfont{\fontseries{m}\fontshape{it}\fontsize{9}{9}\selectfont}
\def\referencefont{\fontseries{m}\fontshape{n}\fontsize{10}{11}\selectfont}


%% ---------------- Main Code -----------------------------
%%  Remember that we can declar commands (to make fragile things safe)
%%  The * form is for ``short'' commands, not longer than a paragraph
%%       \DeclareRobustCommand{cmd}[num][default]{definition}
%%       \DeclareRobustCommand*{cmd}[num][default]{definition}
%%  For checking if commands are redefined
%%       \CheckCommand{cmd}[num][default]{definition}

\RequirePackage{amsfonts}
\RequirePackage{amsmath}
%% AMS is American Mathematics Society.  They have a bunch of nice
%% math fonts and symbols
\RequirePackage{siunitx}  % replacement for SIunits, less problems
\sisetup{detect-all}%use the current default font
%% To think about:  math and SI unit font are serif to set them apart

\RequirePackage[final]{listings} % force final or included files are skipped, invisibly!
% This allows you to include code easily
% \begin{lstlisting}[language=bash]
%  $ wget http://blah
% \end{lstlisting}
% or for simpler snippets
%  \lstinline^cp -rp foo bar^
%  You can replace ^ with any character not in your code
\lstset{%
        language=, %default similar to verbatim
  basicstyle=\footnotesize\ttfamily,%
  frame=lines,%
  breaklines=true,%
  postbreak=\raisebox{0ex}[0ex][0ex]{\ensuremath{\color{red}\hookrightarrow\space}}, % red arrow
  % from http://tex.stackexchange.com/questions/116534/lstlisting-line-wrapping
}

\RequirePackage[labelsep=period]{caption}
%% Captions have period separator to match MS Word template

\RequirePackage{subcaption}
%% Nice package for making sub figures inside of a figure.  Keeps all
%% the reference labels correct and makes "sub captions"

%% First we need to create some "variables" with defaults and commands
%% defaults
\newcommand{\title@cdio}{TITLE OF NOT MORE THAN 10 WORDS IN ARIAL 14 PT, UPPER CASE, BOLD, CENTERED}
\newcommand{\author@cdio}{Author 1, Author 2, Author 3 (Arial, 11 pt, bold, center)}
\newcommand{\affiliation@cdio}{Affiliation of Authors 1, 2, 3, e.g. Department, INstitution (Arial, 11pt, center)}
\newcommand{\authorblock@cdio}{}
\newcommand{\footer@cdio}{Proceedings of the XXth International CDIO Conference, Institute, City, Contry, Month Day1--Day2, Year.}
%% TODO: generalized to multiple affiliations and proper appending

%% commands to set them
\renewcommand{\title}[1]{\renewcommand{\title@cdio}{#1}}
%\renewcommand{\author}[1]{\renewcommand{\author@cdio}{#1}}
%\newcommand{\affiliation}[1]{\renewcommand{\affiliation@cdio}{#1}}
\renewcommand{\author}[1]{{\authorfont{}#1\\\vspace{\baselineskip}}}
\newcommand{\affiliation}[1]{\normalfont{}#1\\\vspace{\baselineskip}}
\newcommand{\makecdiotitle}[1]{
  {\centering
    {\titlefont{}
      \vspace*{0mm}%36mm top edge to title
      \MakeUppercase\title@cdio\par
    }
    \vspace*{12mm - 11pt}
    % specification says 35+61pt
    % I measured 15mm
    #1\par     
    % \vspace{2\baselineskip}
    % I measured 23mm to the abstract
    \vspace*{11mm}
  }
}

\newcommand{\footer}[1]{\renewcommand{\footer@cdio}{#1}}

\pagestyle{fancy} % rest of the document should have fancy headers
                       % but not too fancy
\thispagestyle{fancy} % title page should not have the headers and
                      % footers

\renewcommand\headrulewidth{0pt}
\renewcommand\footrulewidth{0pt}
\lhead{}
\chead{}
\rhead{}

\lfoot{}
\cfoot{\footerfont{}\footer@cdio}
\rfoot{}

\addtolength{\footskip}{2\baselineskip}

%% Section numbering off
\setcounter{secnumdepth}{-2}

%% We need to change the formatting of the section headings
%% Particular to make everything uppercase
%% Problem is if we \renewcommand\section, it breaks \section*
%% Switching to titlesec package
\RequirePackage{titlesec}

\titleformat{\section}%command
%[]%shape
{\normalfont\normalsize\bfseries\MakeUppercase}%format
{\thesection}%label
{0mm}%sep:  horizontal separation between label and title body
{}%before-code
% []%after-code
\titlespacing{\section}
{0mm}%left: increase left-margin
{\baselineskip}%before-sep: vertical space before
{0mm}%after-sep: separation between title and non-sectioning text

\titleformat{\subsection}%command
%[]%shape
{\normalfont\normalsize\bfseries\itshape}%format
{\thesection}%label
{0mm}%sep:  horizontal separation between label and title body
{}%before-code
% []%after-code
\titlespacing{\subsection}
{0mm}%left: increase left-margin
{0mm}%before-sep: vertical space before
{0mm}%after-sep: separation between title and non-sectioning text

\titleformat{\subsubsection}%command
%[]%shape
{\normalfont\normalsize\itshape}%format
{\thesection}%label
{0mm}%sep:  horizontal separation between label and title body
{}%before-code
% []%after-code
\titlespacing{\subsubsection}
{0mm}%left: increase left-margin
{0mm}%before-sep: vertical space before
{0mm}%after-sep: separation between title and non-sectioning text

%% Paragraph formatting
\setlength{\parskip}{\baselineskip}
\setlength{\parindent}{0pt}

% \ifbool{bibtexapa}{
%   %% for proper apa citations in BibTeX
%   \RequirePackage[natbibapa]{apacite}
%   %% option natbibapa gives the familiar \citep \citet commands
%   %% Bibtex adjustments
%   %% https://tex.stackexchange.com/questions/93859/condense-the-space-between-bibliographic-entries
%   \bibliographystyle{apacite}
%   \setlength{\bibhang}{0pt}
%   \setlength{\bibsep}{3pt}

%   %% natbib size adjustments (needed if natbibapa option given to apacite)
%   \renewcommand{\bibsection}{}%Get rid of the second References section
% }{}

%% Helpful macros for how internal references are formatted
%\newcommand{\eqref}[1]{Eqn~(\ref{#1})}%AMSmath
\newcommand{\figref}[1]{Figure~\ref{#1}}
\newcommand{\tableref}[1]{Table~\ref{#1}}

%% Corresponding Author Block
\newcommand{\CorrespondingAuthorBlock}[2]{
\newlength{\tmptabcolsep}\setlength\tmptabcolsep{\tabcolsep}
\setlength\tabcolsep{0pt}
\hspace*{-\parindent}
\begin{minipage}{0.5\textwidth}
\begin{tabular}{p{\textwidth}}
#1
\href{mailto:#2}{#2}\\
\end{tabular}
\end{minipage}
\begin{minipage}{0.5\textwidth}
  \includegraphics[width=32mm]{by-nc-nd}\\
  This work is licensed under a
  \href{https://creativecommons.org/licenses/by-nc-nd/4.0/}{Creative
  Commons Attribution-NonCommercial-NoDerivs 4.0 International License}
\end{minipage}
\setlength\tabcolsep{\tmptabcolsep}
}

\newcommand{\setuphyperref}{
  %% This takes care of hyperlink and url formatting
  % URL formatting assumes url package loaded
  \RequirePackage{xcolor}
  \RequirePackage[hidelinks]{hyperref} % must be last package loaded
  \hypersetup{
    colorlinks=false,%2020, they didn't color links.  Odd.
    anchorcolor=black,
    citecolor=black,
    linkcolor=black,%
    filecolor=black,%
    menucolor=black,%
    urlcolor=blue,
    linkbordercolor=blue,%
  }
  \urlstyle{same}
}


%% Nice fractions
\RequirePackage{nicefrac}   %\nicefrac{1}{2}


%% This will load custom.tex with your custom macros and definitions if it exists
%% We load this last so that it can overrite any existing settings
\IfFileExists{custom.tex}{\input{custom.tex}}{}

%% ---------------- End of Class --------------------------
%%% Local Variables:
%%% mode: latex
%%% TeX-master: "cdio2025-AUTHOR-TITLE"
%%% TeX-engine: xetex
%%% End:
