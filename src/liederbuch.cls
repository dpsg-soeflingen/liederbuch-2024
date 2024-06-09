\ProvidesClass{liederbuch}
\LoadClass[10pt, a5paper]{article} 

\RequirePackage[left=1cm, right=1cm, top=1cm, bottom=1cm]{geometry}
\RequirePackage{calc}
\RequirePackage{xifthen}
\RequirePackage{xcolor}

\RequirePackage{guitar}
\renewcommand\guitarPreAccord{\footnotesize\strut\bfseries}  % Enable bold chord labels.

\RequirePackage{graphicx}

% Use sans-serif font.
\renewcommand{\familydefault}{\sfdefault}

% Set default indendation to 0.
\setlength\parindent{0pt}

% Remove page numbers.
\pagenumbering{gobble}

% Environment Definitions
% ═════════════════════════════════════════════════════════════════════════════

% Environment `song`:
\newenvironment{song}[2]{
    \SongTitle{#1}{#2}
    \addcontentsline{toc}{subsection}{#1 (#2)}
}{\newpage}

% Environment `verse`:
\renewenvironment{verse}[0]{
    \begin{guitarMagic}
        \medskip
}{
        \medskip
    \end{guitarMagic}
}

% Environment `chorus`:
% - The chorus-environment indents the chorus.
\newenvironment{chorus}[0]{
    \begin{guitarMagic}
        \medskip
        \list{}{
            \itemindent\parindent
            \leftmargin 1em
        }
        \item\relax
        \textbf{Refrain: } 
        % \ifthenelse{\isempty{#1}}%
        %     {}% if #1 is empty
        %     {\textbf{(x#1)}}% if #1 is an argument
        \\
    }{
        \endlist
        \medskip
    \end{guitarMagic}
}

% Environment `bridge`:
% - The bridge-environment indents the bridge. 
%   (100% analogous to `\chorus` command)
\newenvironment{bridge}[0]{
    \begin{guitarMagic}
        \medskip
        \list{}{
            \itemindent\parindent
            \leftmargin 1em
        }
        \item\relax
        \textbf{Bridge: } \\
}{
        \endlist
        \medskip
    \end{guitarMagic}
}

% Environment `interlude`:
% - The interlude-environment indents the interlude. 
%   (100% analogous to `\chorus` command)
\newenvironment{interlude}[0]{
    \begin{guitarMagic}
        \medskip
        \list{}{
            \itemindent\parindent
            \leftmargin 1em
        }
        \item\relax
        \textbf{Interlude: } \\
}{
        \endlist
        \medskip
    \end{guitarMagic}
}

% Command Definitions
% ═════════════════════════════════════════════════════════════════════════════

\newcommand{\SongTitle}[2]{
    {\centering\mbox{\textbf{\large#1}}\par}
    {\centering\mbox{#2}\par}
    \medskip
}

\newcommand{\refchorus}[1][]{%
    \smallskip
    \textbf{Refrain }%
    \ifthenelse{\isempty{#1}}%
    {}% if #1 is empty
    {\textbf{(x#1)}}% if #1 is an argument
    \smallskip
    }

\newcommand{\refbridge}[1]{\textbf{Bridge }%
    \smallskip
    \ifthenelse{\isempty{#1}}%
    {}% if #1 is empty
    {\textbf{(x#1)}}% if #1 is an argument
    \smallskip
    }
