%
% Partnermarketing Branding Document Class
%
% A small document class designed to make writing brand-conformant
% documents in LaTeX easy

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{emily-style}[2017/25/06 Emily's Style]
\LoadClass[a4paper, 12pt]{article}
\renewcommand{\baselinestretch}{1.5}

% Package requires
% ======================================================================

% Graphicx for loading images
\RequirePackage{graphicx}
\graphicspath{{images/}}


% Page Layout and Style
% ======================================================================

% Set a reasonable margin size
\RequirePackage[footnotesep=2cm, margin=2cm, bottom=3cm, top=0cm, includeheadfoot]{geometry}
\setlength{\parindent}{0pt}
\setlength{\parskip}{1em}

\RequirePackage[document]{ragged2e}

% Use Prometo font by default
\RequirePackage{fontspec}
\setmainfont{Ubuntu}

% Setup Partnermarketing Logo in the header
\RequirePackage{fancyhdr}
\RequirePackage{tikz}
\usetikzlibrary{calc}
\pagestyle{fancy}
\fancyhf{}
\fancyfoot[L]{%
    Emily Shepherd \\
    emily@emilyshepherd.me
}
\fancyfoot[R]{\begin{tikzpicture}[overlay, remember picture]
    \node[anchor=south east,inner sep=0] at (0,-1cm) {\includegraphics[width=3cm]{Emily}};
\end{tikzpicture}}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{1pt}
\setlength{\headheight}{40pt}

\renewcommand{\maketitle}{
    \begin{center}
        \null
        \vspace{4em}
        \null
        {\fontsize{28}{0}\selectfont
            \@title
        }
        \\
        \vspace{2em}
        {\fontsize{20}{0}\selectfont
            \@subTitle
        }
        \\
        \null
        \vspace{8em}
        \null
    \end{center}
}

\newcommand\subtitle[1]{
    \def\@subTitle{#1}
}
