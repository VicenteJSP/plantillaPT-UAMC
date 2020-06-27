\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{reporte}[2020/03/10 Clase proyecto terminal]
\LoadClass{article}

\RequirePackage{titlesec}
\RequirePackage[spanish]{babel}
\RequirePackage{hyperref}
\RequirePackage{graphicx}
\RequirePackage{subfigure}
\RequirePackage[table]{xcolor}
\RequirePackage{listings}

\newcommand{\resaltar}[1]{\textbf{\textit{#1}}}

\titleformat{\section}[frame]
    {\Large\scshape\raggedright}
    {\filleft \small \ Capítulo \thesection \ }{1em}
    {\filcenter}
    []

\titleformat{\subsection}
    {\large\scshape\raggedright} 
    {\thesubsection}{1em}
    {}
    [\titlerule]

\titleformat{\subsubsection}
    {\scshape\raggedright} 
    {\thesubsubsection}{1em}
    {}
    []

\newcommand{\portadaTSI}[4]{
    \begin{titlepage}
        \centering

        {\includegraphics[width=\textwidth]{images/logoUAM.png}\par}
        \vspace{1cm}
            {\scshape\Large División de Ciencias de la Comunicación y Diseño \par}
        \vspace{1.5cm}
        {\scshape\Huge #1 \par}
        \vspace{1.5cm}
            {\itshape\Large Licenciatura en Tecnologías y Sistemas de Información \par}
        \vfill
            {\Large Autor: \large #2\par}
            {\Large Asesor: \large #3\par}
        \vfill
            {\Large #4 \par}
    \end{titlepage}
}