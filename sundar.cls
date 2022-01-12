% Intro Options
\ProvidesClass{rahulworld-resume}[2021/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.7cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}
\usepackage{blindtext}
\usepackage{lipsum}
\usepackage{amsmath}


% Color definitions
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{000002}
\definecolor{headings}{HTML}{138EB3}
\definecolor{subheadings}{HTML}{000000}
\definecolor{smcolor}{HTML}{000000}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/calibri/]{Calibri}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/calibri/]{Calibri}
\newcommand{\custombold}[1]{\color{subheadings}\fontspec[Path = fonts/calibri/]{CALIBRIB}\selectfont #1 \normalfont}


% Header command
% \newcommand{\headername}{\color{headings}
% \fontspec[Path = fonts/calibri/]{Calibri}\fontsize{24pt}{32pt}\selectfont\raggedright}{} {0em}{}
\newcommand{\headername}[1]{\color{headings}
\fontspec[Path = fonts/calibri/]{CALIBRIB}\fontsize{24pt}{12pt}\selectfont\vspace{10pt}\raggedright {#1} \normalfont}


\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{headings}
\fontspec[Path = fonts/calibri/]{Calibri}\fontsize{16pt}{24pt}\selectfont\raggedright}{} {0em}{}

\newcommand{\SectionHead}[1]{\smash{\begin{tabular}{l} \hline #1 \\ \hline \end{tabular}\hspace*{-\tabcolsep}}}

% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec[Path = fonts/calibri/]{Calibri}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}
\titlespacing{\subsection}{2pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{2pt}{\parskip}{-\parskip}
\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec[Path = fonts/calibri/]{CALIBRIB}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\hspace*{0pt}\hfill\vspace{3pt}\fontspec[Path = fonts/calibri/]{CALIBRIB}\fontsize{12pt}{13pt}\selectfont {#1 \\} \normalfont}

% Item Description command
\newcommand{\itemdes}[1]{\color{subheadings}\raggedright\vspace{2pt}\fontspec[Path = fonts/calibri/]{Calibri}\fontsize{12pt}{13pt}\selectfont {#1} \normalfont}

% Descriptors command
\newcommand{\descriptright}[1]{\color{subheadings}\raggedright\hspace*{0pt}\hfill\fontspec[Path = fonts/calibri/]{CALIBRII}\fontsize{12pt}{12pt}\selectfont {#1 \\} \normalfont}

% Descriptors datecolor
\newcommand{\datecolor}[1]{\color{smcolor}\raggedright\scshape\fontspec[Path = fonts/calibri/]{CALIBRII}\fontsize{11pt}{13pt}\selectfont {#1 } \normalfont}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{4pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}








\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{simplecv}[2020/07/20 v0.1 A simple CV class]




\setlength{\parindent}{0pt} % par no indent


\RequirePackage{palatino} % font
\RequirePackage{hyperref}
\RequirePackage{etoolbox} %\ifnumgreater
\RequirePackage{tikz} %\foreach
\RequirePackage{xcolor}
\definecolor{lightblue}{RGB}{0, 150, 180}
\definecolor{emphblue}{RGB}{0, 120, 150}
\colorlet{emphcolor}{black!99!white}
\colorlet{body}{black!99!white}
\RequirePackage{fontawesome}
\RequirePackage{fancyhdr} % header & footer
\RequirePackage{lastpage} % get total page num

% set footer
\newcommand{\setfooter}[1]{
  \pagestyle{fancy}
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt} % remove header lines
  \cfoot{{\color{lightblue}\thepage\ of \pageref{LastPage}}}
  \rfoot{{\color{lightblue}#1}}
}


% new cmd \name
\newcommand{\name}[1]{
  \centerline{\Huge{#1}}
}

% new cmd \personalinfo
% \param
%   - addr
%   - state
%   - postcode
%   - email
%   - phone number
\newcommand{\personalinfo}[5]{
  % \centerline{\color{lightblue}{
  \centerline{
    \faMapMarker~#1 \textperiodcentered #2 \textperiodcentered #3
    \hspace{2pt}
    \faEnvelope~\href{mailto:#4}{#4}
    \hspace{2pt}
    \faMobile~#5
  }
}


% new cmd \cvsection
\newcommand{\cvsection}[1] {
  \medskip
  {\Large\scshape\raggedright{\color{emphcolor}{#1}}\par}\medskip
  \vspace{-\baselineskip}
  {\color{lightblue}\noindent\rule\linewidth{2pt} \par}
  \smallskip
}



% new cmd \cvevent
\newcommand{\cvevent}[4]{
  \noindent\makebox[0.2\linewidth][l]{\faCalendar~#1}
  \large\makebox[0.4\linewidth][l]{#2}
  \par\smallskip
  \noindent\makebox[0.2\linewidth][l]{}
  \makebox[0.5\linewidth][l]{\textbf{\color{emphcolor}#3}}
  \small\makebox[0.2\linewidth][l]{\faMapMarker~#4}\par
  \smallskip
  \normalsize
}

% new cmd \cvitem
% use \parbox to break lines inside boxes
\newcommand{\cvitem}[1]{
  \noindent\hspace{0.2\linewidth}
  \makebox[1em][l]{\faAngleDoubleRight}
  \parbox[t]{0.75\linewidth}{#1}\par
  \smallskip
}

% new cmd \cvskill
\newcommand{\cvskill}[2]{
  \noindent\hspace{0.2\linewidth}
  \makebox[0.4\linewidth][l]{#1}
  \makebox[0.3\linewidth][l]{
    \small
    \foreach \x in {1,...,10}{
      {\ifnumgreater{\x}{#2}{\color{body!30}}{\color{emphcolor}}\faCircle}
    }
  }\par
  \smallskip
}


% new cmd \cvlangitem
% new language items
\newcommand{\cvlangitem}[2]{
  \noindent\hspace{0.2\linewidth}
  \makebox[0.4\linewidth][l]{#1}
  \makebox[0.3\linewidth][l]{#2}
  \par\smallskip
}


% new cmd \cvreferee
% \param
%   - name
%   - title
%   - organization
%   - email
%   - phone
%   - webpage
\newcommand{\cvreferee}[6]{
  {
  \noindent\hspace{0.2\linewidth}
  \makebox[0.4\linewidth][l]{
    \href{#6}{\large{#1}}
    \normalsize\hspace{2ex}\faMortarBoard~#2
  }\par\smallskip
  \noindent\hspace{0.2\linewidth}
  \makebox[3ex][l]{\faInstitution}\makebox[0.6\linewidth][l]{#3}\par
  \noindent\hspace{0.2\linewidth}
  \makebox[3ex][l]{\faEnvelope}\makebox[0.6\linewidth][l]{\href{mailto:#4}{#4}}\par
  \noindent\hspace{0.2\linewidth}
  \makebox[3ex][l]{\faPhone}\makebox[0.6\linewidth][l]{#5}\par
  \medskip
  }
}
