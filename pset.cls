\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pset}[2024/05/22 Minimalist Homework Class]

% Load the base article class
\LoadClass[11pt]{article}

% Required packages
\RequirePackage[utf8]{inputenc}
\RequirePackage[margin=1in]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{amsmath, amssymb, amsthm}

\RequirePackage{hyperref}
\RequirePackage{listings}
\RequirePackage{xcolor}

% Define colors for code
\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

\setlength{\parindent}{0pt}

% --- Header and Footer Setup ---
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0.4pt}

% Define commands for user info
\newcommand{\course}[1]{\def\@course{#1}}
\newcommand{\assignment}[1]{\def\@assignment{#1}}


% Build the header
\AtBeginDocument{
    \lhead{\@course \\ \@assignment}
    \vspace*{0.2in}
}

% --- Problem Environment ---
\newcounter{problemcount}
\newenvironment{problem}[1][]{
    \refstepcounter{problemcount}
    \par\addvspace{1.5pt}
    \noindent \textbf{Problem \theproblemcount \ifx&#1&\else (#1)\fi.} \\ \rmfamily
}{
    \par\medskip
}



% Global setup for listings
\lstset{
    backgroundcolor=\color{backcolour},   
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\ttfamily\small,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2,
    frame=single
}
