\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{score_book}
%
% Load packages
\RequirePackage[a4paper,margin=1in,landscape]{geometry}
\RequirePackage{pdfpages}%Includepdf
\RequirePackage{amsmath}
\RequirePackage{graphicx}
\RequirePackage{grffile}
\RequirePackage[dutch]{babel}
\RequirePackage{multicol}%Needed for toc
\RequirePackage{bookmark}%Needed for bookmark to toc
\RequirePackage{background}
	\backgroundsetup{scale=0.7}
	\backgroundsetup{angle=0}
	\backgroundsetup{opacity=0.1}
	\backgroundsetup{contents={\includegraphics[width=\textheight]{./images/seaforth_capbadge.jpg}}}
\RequirePackage{hyperref}
	\hypersetup{colorlinks=false}
\RequirePackage{tocloft}
\PassOptionsToPackage{unicode}{hyperref}
\PassOptionsToPackage{naturalnames}{hyperref}
%\RequirePackage{chngpage}
%
% (Re)Set counters
\setcounter{secnumdepth}{-2}%Hides section no's
%
% Define commands
\newcommand{\mysection}[2]{
	\phantomsection
	\stepcounter{#1}
	\addtocontents{toc}{\cftpagenumbersoff{#1}}%cft for disabling page numbering
	\addcontentsline{toc}{#1}{#2}
	\addtocontents{toc}{\cftpagenumberson{#1}}%cft for enabling page numbering
}
