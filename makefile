

ex1:
	perl main.pl -design  ./test/ex1/ex1.v  \
	             -library ./test/ex1/lib.v  \
	             -top_design_name TOP       \
	             -require_time 5            \
	             -slack_time 3 > ex1_rpt.rst

ex2:
	perl main.pl -design  ./test/ex2/ex2.v  \
	             -library ./test/ex2/lib.v  \
	             -top_design_name TOP       \
	             -require_time 10           \
	             -slack_time 6 > ex2_rpt.rst

clean:
	rm *.dot
	rm *.rst
 
