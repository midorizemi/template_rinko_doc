#!/usr/bin/env perl
$latex = 'uplatex %O -synctex=1 %S -file-line-error';
$pdflatex = 'lualatex %O -synctex=1 %S';
$biber = 'biber --bblencoding=utf8 -u -U --output_safechars';
$bibtex = 'pbibtex --kanji=utf8 %O %B';
$makeindex = 'upmendex %O -o %D %S';
$dvipdf = 'dvipdfmx %O -o %D %S';
$dvips = 'dvips %O -z -f %S | convbkmk -u > %D';
$ps2pdf = 'ps2pdf %O %S %D';
$pdf_mode = 3;
if ($^O eq 'darwin') {
  $pvc_view_file_via_temporary = 0;
  $pdf_previewer = 'open -ga /Applications/Skim.app';
} elsif ($^O eq 'linux') {
  $pdf_previewer = 'zathura ';
} else {
  $pdf_previewer = 'xdg-open';
}
