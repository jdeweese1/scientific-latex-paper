---
title: "A Tutorial in using Markdown for scientific papers"
date: "November 2020"
author: "Jarod DeWeese" 
header-includes:
 - \usepackage{aaai21}
---

# Disclaimer

There are some weird formatting bugs to workaround still.

# Introduction

Markdown [^gruber] is a markup format created by John Gruber, a tech writer and podcaster in the early 2000's. Markdown is human readable and used widely in tech, because of it's powerful, yet simple format.

The footnote above is inserted  in text by using the following notation:

```md
Markdown [^gruber] is a ...

# Then we can define the text that should appear

  in the footnote

[^gruber]: https://en.wikipedia.org/wiki/Markdown
```

If you are not familiar with MD, check out [this page](https://guides.github.com/features/mastering-markdown/): https://guides.github.com/features/mastering-markdown/.



I personally prefer writing MD with [MarkText](https://github.com/marktext/marktext) 

```shell
$brew cask install mark-text
```

[^gruber]: https://en.wikipedia.org/wiki/Markdown

# Including images

It is easy to include images in this file by invoking the following command in your file:

```md
![duck.jpeg]
```

![Here is a duck!](./duck.jpeg)

# Including bibliographies

@shubernetskiy_2019

You can do this by doing the following in your main md file:

```md
@shubernetskiy_2019
```

In the paper.bib file, you will see something like:

```
@misc{shubernetskiy_2019,
  title={Markdown to PDF With IEEE Style},
  url={https://miki725.com/2019/10/15/markdown-to-pdf-ieee.html}, author={Shubernetskiy, Miroslav},
  year={2019},
  month={Oct}
}
```

# Including LaTex in Markdown

It can be cumbersome to do some things purely in markdown, for this we can include LaTex in our md:

\begin{tabular}{|c|c|c|}
\hline
 \text{Category} & \text{Number} & \text{Percent} \tabularnewline
\hline
normal & 35998 & 84.88\% \tabularnewline

abusive & 4530 & 10.68\% \tabularnewline

hateful & 1881 & 4.44\% \tabularnewline

\hline
\end{tabular}

Here is the code to do this:

```md
\begin{tabular}{|c|c|c|}
\hline
 \text{Category} & \text{Number} & \text{Percent} \tabularnewline
\hline
normal & 35998 & 84.88\% \tabularnewline

abusive & 4530 & 10.68\% \tabularnewline

hateful & 1881 & 4.44\% \tabularnewline

\hline
\end{tabular}
```

# Including contents of other files

<!-- ## No part of speech

TODO INCLUDE non POS TAGGED RESULTS, AND COMPARED TO THE POS TAGGED -->

You should see the contents of a seperate file now included below:

!include file1_to_include.md



We can also use this to include perhaps a classifaction report produced from sklearn:



!include classif_report.txt

# Building the report

This set of scripts is based on @shubernetskiy_2019, and @gist.

# Acknowledgements

- https://gist.github.com/maxogden/97190db73ac19fc6c1d9beee1a6e4fc8#file-paper-md

- https://miki725.com/2019/10/15/markdown-to-pdf-ieee.html

# References
