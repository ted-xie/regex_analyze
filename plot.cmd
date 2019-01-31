# Followed this tutorial:
# http://psy.swansea.ac.uk/staff/carter/gnuplot/gnuplot_frequency.htm

clear
reset
set key off
set border 3

set boxwidth 50 absolute
set style fill solid 1.0 noborder

set term png
set output "histogram.png"

set title "Distribution of DFA sizes"

set xlabel "Size of DFA"
set ylabel "Number of rules"

bin_width=100;

bin_number(x) = floor(x/bin_width)

rounded(x) = bin_width * (bin_number(x))
plot "nodes.log" using (rounded($1)):(1) smooth frequency with boxes
