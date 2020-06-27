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

% Formato de la sección simulando ser un capítulo
\titleformat{\section}[frame]
    {\Large\scshape\raggedright}
    {\filleft \small \ Capítulo \thesection \ }{1em}
    {\filcenter}
    []

% Formato de la subsección
\titleformat{\subsection}
    {\large\scshape\raggedright} 
    {\thesubsection}{1em}
    {}
    [\titlerule]

% Formato de la subsubsección
\titleformat{\subsubsection}
    {\scshape\raggedright} 
    {\thesubsubsection}{1em}
    {}
    []

% Creador de portada
\newcommand{\portadaTSI}[4]{
    \begin{titlepage}
        \centering
        % Logotipo de la Institucion
        {\includegraphics[width=\textwidth]{images/logoUAM.png}\par}
        \vspace{1cm}
            % Nombre de la División
            {\scshape\Large División de Ciencias de la Comunicación y Diseño \par}
        \vspace{1.5cm}
        % Titulo del Proyecto
        {\scshape\Huge #1 \par}
        \vspace{1.5cm}
            {\itshape\Large Licenciatura en Tecnologías y Sistemas de Información \par}
        \vfill
            % Nombre del Alumno
            {\Large Autor: \large #2\par}
            %Nombre del Asesor
            {\Large Asesor: \large #3\par}
        \vfill
            % Fecha de presentación 
            {\Large #4 \par}
    \end{titlepage}

    % Índice de contenido
    \tableofcontents
    \clearpage
    
    %Índice de figuras
    \listoffigures
    \clearpage
}

\newcommand{\resumen}[1]{
    \vspace*{\fill}
    \begin{abstract}        
       #1
    \end{abstract}
    \vspace*{\fill}
    \clearpage
}

\newcommand{\capituloPt}[2]{
    \section{#1}
        #2
    \par
}

\newcommand{\apartado}[2]{
    \subsection{#1}
        #2
    \par
}

\newcommand{\subapartado}[2]{
    \subsubsection{#1}
        #2
    \par
}
