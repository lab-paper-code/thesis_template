%%
%% This is file `thesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% class.dtx  (with options: `class')
%% packages.dtx  (with options: `packages')
%% helper_fn.dtx  (with options: `helpers')
%% class.dtx  (with options: `main')
%% segments/cover-eng.dtx  (with options: `cover-eng')
%% segments/cover-kor.dtx  (with options: `cover-kor')
%% segments/innercover-eng.dtx  (with options: `innercover-eng')
%% segments/innercover-kor.dtx  (with options: `innercover-kor')
%% segments/abstract-eng.dtx  (with options: `abstract-eng')
%% segments/abstract-kor.dtx  (with options: `abstract-kor')
%% 
%% IMPORTANT NOTICE:
%% 
%% For the copyright see the source file.
%% 
%% Any modified versions of this file must be renamed
%% with new filenames distinct from thesis.cls.
%% 
%% For distribution of the original source see the terms
%% for copying and modification in the file class.dtx packages.dtx helper_fn.dtx class.dtx segments/cover-eng.dtx segments/cover-kor.dtx segments/innercover-eng.dtx segments/innercover-kor.dtx segments/abstract-eng.dtx segments/abstract-kor.dtx.
%% 
%% This generated file may be distributed as long as the
%% original source files, as listed above, are part of the
%% same distribution. (The sources need not necessarily be
%% in the same archive or directory.)
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[2014/08/16 Example LaTeX class]
\newcommand{\@doclanguage}{english}
\newif\if@iskorean
\newcommand{\@doctype}{master}
\newif\if@isphd
\newif\if@isshowframe
\DeclareOption{eng}{\renewcommand{\@doclanguage}{english}\@iskoreanfalse}
\DeclareOption{kor}{\renewcommand{\@doclanguage}{korean}\@iskoreantrue}
\DeclareOption{master}{\renewcommand{\@doctype}{master}\@isphdfalse}
\DeclareOption{phd}{\renewcommand{\@doctype}{phd}\@isphdtrue}
\DeclareOption{showframe}{\@isshowframetrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[]{article}
\RequirePackage{fontspec}
\RequirePackage[hangul]{kotex}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{algorithm}
\RequirePackage{algorithmic}
\RequirePackage{setspace}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage{graphicx}
\RequirePackage{tikz}
\RequirePackage{tocloft}
\RequirePackage{booktabs}
\newcommand{\koreanstamp}[1]{
    \begin{tikzpicture}[baseline=(stamp.base)]
        \node[draw=black, circle, thin, inner sep=0.5pt] (stamp){\fontsize{8pt}{8pt}\selectfont#1};
    \end{tikzpicture}
}
\if@iskorean
    \newcommand{\@ToCheadername}{\fontsize{16pt}{18pt}\selectfont 목\quad차}
    \newcommand{\@LoTheadername}{\normalfont\fontsize{11pt}{18pt}\selectfont <표 차례>}
    \newcommand{\@LoFheadername}{\normalfont\fontsize{11pt}{18pt}\selectfont <그림 차례>}
    \newcommand{\@referenceheadername}{참고 문헌}
    \newcommand{\@figurelabelname}{그림}
    \newcommand{\@tablelabelname}{표}
\else
    \newcommand{\@ToCheadername}{\fontsize{18pt}{18pt}\selectfont Content}
    \newcommand{\@LoTheadername}{\fontsize{18pt}{18pt}\selectfont List of Tables}
    \newcommand{\@LoFheadername}{\fontsize{18pt}{18pt}\selectfont List of Figures}
    \newcommand{\@referenceheadername}{References}
    \newcommand{\@figurelabelname}{Figure}
    \newcommand{\@tablelabelname}{Table}
\fi
\RequirePackage[paperheight=260mm,paperwidth=190mm,
    left=20mm,right=20mm,top=0mm,bottom=0mm,
    headheight=0mm,headsep=0mm,
    footskip=0mm
]{geometry}
\if@isshowframe
    \newgeometry{showframe}
\fi
\newcommand{\setbodylayout}{
    \newgeometry{
    left=20mm,right=20mm,top=30mm,bottom=30mm,
    headheight=10mm,headsep=0mm,
    footskip=10mm,
    }
}
\if@iskorean
    \setmainfont{NanumMyeongjo}
    \newfontfamily{\coveruniversityfont}{Noto Sans CJK KR}
\else
    \setmainfont{Times New Roman}
    \setmainhangulfont[Ligatures=TeX]{NanumMyeongjo}
\fi
\newfontfamily{\pagenumfont}{NanumGothic}
\renewcommand{\footnotesize}{\fontsize{8pt}{10pt}\selectfont}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\cfoot{\pagenumfont\fontsize{10pt}{10pt}\selectfont{$-$ {\thepage} $-$}}
\fancypagestyle{plain}{
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \cfoot{\pagenumfont\fontsize{10pt}{10pt}\selectfont{$-$ {\thepage} $-$}}
}
\newcommand{\frontmatter}{
    \pagenumbering{roman}
    \singlespacing
}
\newcommand{\mainmatter}{
    \pagenumbering{arabic}

    \if@iskorean
        \doublespacing
    \else
        \onehalfspacing
    \fi
}
\newcommand{\backmatter}{
    \renewcommand{\thefootnote}{}
}
\renewcommand{\contentsname}{
    \begin{center}
        \@ToCheadername
    \end{center}
}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftsecfont}{\fontsize{12pt}{12pt}\selectfont}
\renewcommand{\cftbeforesecskip}{12pt}
\renewcommand{\cftbeforesubsecskip}{6pt}
\renewcommand{\cftbeforesubsubsecskip}{2pt}
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}
\renewcommand{\listfigurename}{
    \begin{center}
        \@LoFheadername
    \end{center}
}
\renewcommand{\cftfigpresnum}{\@figurelabelname~}
\renewcommand{\cftfignumwidth}{60pt}
\renewcommand{\cftfigfont}{{\fontsize{12pt}{12pt}\selectfont}}
\renewcommand{\cftbeforefigskip}{10pt}
\renewcommand{\listtablename}{
    \begin{center}
        \@LoTheadername
    \end{center}
}
\renewcommand{\cfttabpresnum}{\@tablelabelname~}
\renewcommand{\cfttabnumwidth}{60pt}
\renewcommand{\cfttabfont}{{\fontsize{12pt}{12pt}\selectfont}}
\renewcommand{\cftbeforetabskip}{10pt}
\renewcommand{\thesection}{\Roman{section}}
\renewcommand{\thesubsection}{\arabic{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection.\arabic{subsubsection}}
\titleformat{\section}
{\clearpage\fontsize{18pt}{20pt}\selectfont\centering\bfseries}{\thesection}{10pt}{}
\titlespacing*{\section}{0pt}{0pt}{20pt}
\titleformat{\subsection}
{\fontsize{14pt}{16pt}\selectfont\bfseries}{\thesubsection}{0.5em}{}
\titlespacing{\subsection}{0pt}{15pt}{5pt}
\titleformat{\subsubsection}
{\fontsize{12pt}{14pt}\selectfont\bfseries}{\thesubsubsection}{0.5em}{}
\titlespacing{\subsubsection}{0pt}{10pt}{0pt}
\titleformat{\paragraph}[runin]
{\normalfont\normalsize\bfseries}{\theparagraph}{0.5em}{}
\titlespacing{\paragraph}{1.5em}{5pt}{1em}
\renewcommand{\subparagraph}[1]{}
\setlist{
    topsep=12pt,
    itemsep=10pt,
    parsep=0pt,
}
\renewcommand{\figurename}{\@figurelabelname}
\renewcommand{\tablename}{\@tablelabelname}
\renewcommand*{\title}[2]{\renewcommand{\@title}{#1}\newcommand{\@othertitle}{#2}}
\renewcommand*{\author}[2]{\renewcommand{\@author}{#1}\newcommand{\@otherauthor}{#2}}
\newcommand*{\supervisor}[2]{\newcommand{\@supervisor}{#1}\newcommand{\@othersupervisor}{#2}}
\newcommand*{\department}[2]{\newcommand{\@department}{#1}\newcommand{\@otherdepartment}{#2}}
\newcommand*{\degree}[2]{\newcommand{\@degree}{#1} \newcommand{\@otherdegree}{#2}}
\renewcommand*{\date}[2]{\renewcommand{\@date}{#1} \newcommand{\@otherdate}{#2}}
\renewcommand{\abstract}[1]{\newcommand{\@abstract}{#1}}
\newcommand*{\chairprofessor}[1]{\newcommand{\@chairprofessor}{#1}}
\newcommand*{\secondprofessor}[1]{\newcommand{\@secondprofessor}{#1}}
\newcommand*{\thirdprofessor}[1]{\newcommand{\@thirdprofessor}{#1}}
\newcommand*{\fourthprofessor}[1]{\newcommand{\@fourthprofessor}{#1}}
\newcommand*{\fifthprofessor}[1]{\newcommand{\@fifthprofessor}{#1}}
\newcommand{\makecover}{
    \if@iskorean
        \@coverkor
        \@innercoverkor
    \else
        \@covereng
        \@innercovereng
    \fi
}
\newcommand{\makeabstract}{
    \if@iskorean
        \@abstracteng
    \else
        \@abstractkor
    \fi
}
\newcommand{\makebibliography}{
    \printbibliography[title={\@referenceheadername},heading=bibintoc]
    \clearpage
}
\newcommand*{\@covereng}{
    \begin{titlepage}
        \begin{center}
            \vspace*{82pt}
            %
            %^^A Thesis Type
            {\fontsize{12pt}{9.6pt}\selectfont Thesis for the Degree of \@degree}\par
            \vspace{56pt}
            %
            %^^A Title
            {\fontsize{21pt}{33.6pt}\selectfont\@title}\par
            \vspace{68pt}
            %
            %^^A Department and School
            {\fontsize{12pt}{19.2pt}\selectfont \@department}\par
            \vspace{56.8pt}
            %
            %^^A Author
            {\fontsize{14pt}{11.2pt}\selectfont \@author}\par
            \vfill
            %
            %^^A Date
            {\fontsize{12pt}{10.8pt}\selectfont \@date}\par
            \vspace{28.4pt}
            %
            %^^A University Name
            {\fontsize{16pt}{22.4pt}\selectfont Kyungpook National University\\ Graduate School}\par
            \vspace{50pt}
        \end{center}
    \end{titlepage}
    \pagebreak
}
\newcommand*{\@coverkor}{
    \begin{titlepage}
        \begin{center}
            \vspace*{82pt}
            %
            %^^A Thesis Type
            {\fontsize{12pt}{9.6pt}\selectfont 경북대학교 {\@degree}학위논문}\par
            \vspace{56pt}
            %
            %^^A Title
            {\fontsize{21pt}{33.6pt}\selectfont\@title}\par
            \vspace{68pt}
            %
            %^^A Department and School
            {\fontsize{12pt}{19.2pt}\selectfont \@department}\par
            \vspace{56.8pt}
            %
            %^^A Author
            {\fontsize{14pt}{11.2pt}\selectfont \@author}\par
            \vfill
            %
            %^^A Date
            {\fontsize{12pt}{10.8pt}\selectfont \@date}\par
            \vspace{28.4pt}
            %
            %^^A University Name
            {\coveruniversityfont\fontsize{16pt}{22.4pt}\selectfont 경북대학교 대학원}\par
            \vspace{50pt}
        \end{center}
    \end{titlepage}
    \pagebreak
}
\newcommand*{\@innercovereng}{
    \begin{titlepage}
        \begin{center}
            \vspace*{82pt}
            %
            %^^A Title
            {\fontsize{21pt}{33.6pt}\selectfont{\@title}\par}
            \vspace{28.4pt}
            %
            %^^A Author
            {\fontsize{14pt}{14pt}\selectfont{\@author}\par}
            \vspace{28.4pt}
            %
            %^^A Department and School
            {\fontsize{12pt}{19.2pt}\selectfont \@department}\par
            \vspace{28.4pt}
            %
            %^^A Supervisor
            {\fontsize{12pt}{12pt}\selectfont Supervised by Professor \@supervisor}
            \vfill
            %
            %^^A Approval text
            {\fontsize{12pt}{14.8pt}\selectfont Approved as a qualified thesis of \@author \\
            \if@isphd
                for the degree of \@degree by the Evaluation Committee
            \else
                for the degree of \@degree\\ by the Evaluation Committee
            \fi
            }\par
            \vspace{28.4pt}
            %
            %^^A Date
            \fontsize{12pt}{14.8pt}\selectfont{\@date}
            \vspace{28.4pt}
            %
            %^^A Signature Fields
            {\fontsize{12pt}{18pt}\selectfont
                \begin{flushright}
                    \begin{tabular}{c l}
                        Chairman & \underline{\makebox[2in][l]{\raggedbottom\@chairprofessor}~\koreanstamp{인}}\\[2pt]
                        & \underline{\makebox[2in][l]{\raggedbottom\@secondprofessor}~\koreanstamp{인}}\\[2pt]
                        & \underline{\makebox[2in][l]{\raggedbottom\@thirdprofessor}~\koreanstamp{인}}\\[2pt]
                        \if@isphd
                            & \underline{\makebox[2in][l]{\raggedbottom\@fourthprofessor}~\koreanstamp{인}}\\[2pt]
                            & \underline{\makebox[2in][l]{\raggedbottom\@fifthprofessor}~\koreanstamp{인}}\\[2pt]
                        \fi
                    \end{tabular}
                \end{flushright}
            }
            \vspace{26.4pt}
            %
            %^^A University Name
            {\fontsize{16pt}{22.4pt}\selectfont Kyungpook National University\\ Graduate School}\par
            \vspace{50pt}
        \end{center}
    \end{titlepage}
    \pagebreak
}
\newcommand*{\@innercoverkor}{
    \begin{titlepage}
        \begin{center}
            \vspace*{82pt}
            %
            %^^A Title
            {\fontsize{21pt}{33.6pt}\selectfont{\@title}\par}
            \vspace{28.4pt}
            %
            %^^A Author
            {\fontsize{14pt}{14pt}\selectfont{\@author}\par}
            \vspace{28.4pt}
            %
            %^^A Department and School
            {\fontsize{12pt}{19.2pt}\selectfont \@department}\par
            \vspace{28.4pt}
            %
            %^^A Supervisor
            {\fontsize{12pt}{12pt}\selectfont 지도교수 \@supervisor}
            \vfill
            %
            %^^A Approval text
            {\fontsize{12pt}{14.8pt}\selectfont 홍길동의
            \if@isphd
                \@author박사 학위논문을 인준함
            \else
                \@author석사 학위논문을 인준함
            \fi
            }\par
            \vspace{28.4pt}
            %
            %^^A Date
            \fontsize{12pt}{14.8pt}\selectfont{\@date}
            \vspace{28.4pt}
            %
            %^^A Signature Fields
            {\fontsize{12pt}{18pt}\selectfont
                \begin{flushright}
                    \begin{tabular}{c l}
                        위원장 & \underline{\makebox[2in][l]{\raggedbottom\@chairprofessor}~\koreanstamp{인}}\\[2pt]
                        & \underline{\makebox[2in][l]{\raggedbottom\@secondprofessor}~\koreanstamp{인}}\\[2pt]
                        & \underline{\makebox[2in][l]{\raggedbottom\@thirdprofessor}~\koreanstamp{인}}\\[2pt]
                        \if@isphd
                            & \underline{\makebox[2in][l]{\raggedbottom\@fourthprofessor}~\koreanstamp{인}}\\[2pt]
                            & \underline{\makebox[2in][l]{\raggedbottom\@fifthprofessor}~\koreanstamp{인}}\\[2pt]
                        \fi
                    \end{tabular}
                \end{flushright}
            }
            \vspace{26.4pt}
            %
            %^^A University Name
            {\fontsize{16pt}{22.4pt}\selectfont 경북대학교 대학원}\par
            \vspace{50pt}
        \end{center}
    \end{titlepage}
    \pagebreak
}
\newcommand*{\@abstracteng}{
    \addcontentsline{toc}{section}{영문초록}
    %
    %^^A Header
    \begin{center}
        \singlespacing
        %
        {\fontsize{14pt}{16pt}\selectfont{\@othertitle\footnote{
        \noindent A thesis submitted to the Council of the Graduate School of Kyungpook National University in partial fulfillment of the requirements for the degree of {\@otherdegree} in \@otherdate.
        }}\par}
        \vspace{20pt}
        %
        {\fontsize{12pt}{14pt}\selectfont{\@otherauthor}\par}
        \vspace{20pt}
        %
        {\fontsize{10pt}{10pt}\selectfont \@otherdepartment}\par
        {\fontsize{10pt}{10pt}\selectfont (Supervised by Professor \@othersupervisor)}\par
        \vspace{20pt}
    \end{center}
    %
    %^^A abstract body
    {\fontsize{14pt}{16pt}(Abstract)}\par
    \vspace{20pt}
    \onehalfspacing
    \@abstract
}
\newcommand*{\@abstractkor}{
    \addcontentsline{toc}{section}{Korean Abstract}
    %
    %^^A Abstract Header
    \begin{center}
        \singlespacing
        {\fontsize{14pt}{16pt}\selectfont{\@othertitle}\par}
        \vspace{20pt}
        %
        {\fontsize{12pt}{14pt}\selectfont{\@otherauthor}\par}
        \vspace{20pt}
        %
        {\fontsize{10pt}{10pt}\selectfont \@otherdepartment}\par
        {\fontsize{10pt}{10pt}\selectfont (지도교수 \@othersupervisor)}\\
        \vspace{20pt}
    \end{center}
    %
    %^^A Abstract Body
    {\fontsize{14pt}{16pt}(초  록)}\par
    \vspace{20pt}
    \doublespacing
    \@abstract
}
\endinput
%%
%% End of file `thesis.cls'.
