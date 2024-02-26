\ProvidesClass{liederbuch}
\LoadClass[10pt, a5paper]{article} 

\RequirePackage[left=1cm, right=1cm, top=2cm, bottom=2cm]{geometry}
\RequirePackage{calc}

\RequirePackage{guitar}
\renewcommand\guitarPreAccord{\footnotesize\strut\bfseries}  % Enable bold chord labels.

% Use sans-serif font.
\renewcommand{\familydefault}{\sfdefault}

% General Chord Definition.
\newcommand{\Ch}[2]{%
    \makebox[0pt][c]{\hspace{\widthof{#2}}\raisebox{0.9em}[1.7em]{\textbf{#1}}}%
    #2%
}
% For brevity of notation, all chords as simple commands.
\newcommand{\Am}[1]{\Ch{Am}{#1}}
\newcommand{\E}[1]{\Ch{E}{#1}}

% The song-environment.
\newcommand{\SongTitle}[2]{
    {\centering\mbox{\textbf{\large#1}}\par}
    {\centering\mbox{#2}\par}
    \bigskip
}
\newenvironment{song}[2]{
    \SongTitle{#1}{#2}
}{\newpage}

% The chorus-environment indents the chorus.
\newenvironment{chorus}[0]{
    \bigskip
    \list{}{
        \itemindent\parindent
        \leftmargin 3em
    }
    \item\relax
    \textbf{Refrain: } \\
}{
    \endlist
    \bigskip
}

% The bridge-environment indents the bridge. (100% analogous to `\chorus` command)
\newenvironment{bridge}[0]{
    \bigskip
    \list{}{
        \itemindent\parindent
        \leftmargin 3em
    }
    \item\relax
    \textbf{Bridge: } \\
}{
    \endlist
    \bigskip
}

% Set default indendation to 0.
\setlength\parindent{0pt}
