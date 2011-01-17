{ Path 1 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
A[0]	(in)	0	0	r
U10/A	NAND2	0	0	r
U10/Y	NAND2	1	1	f
U9/A	NOT1	0	1	f
U9/Y	NOT1	1	2	r
U7/A	NAND2	0	2	r
U7/Y	NAND2	1	3	f
U4/A	NAND2	0	3	f
U4/Y	NAND2	1	4	r
M[1]	(out)	0	4	r
=================================================
Data Required time			10
Data Arrival time			4
=================================================
Slack			6
}
Input Vector {
A[0]-TOP = r
A[1]-TOP = 0
B[0]-TOP = 0
B[1]-TOP = 1
}
{ Path 2 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
A[0]	(in)	0	0	r
U10/A	NAND2	0	0	r
U10/Y	NAND2	1	1	f
U9/A	NOT1	0	1	f
U9/Y	NOT1	1	2	r
U7/A	NAND2	0	2	r
U7/Y	NAND2	1	3	f
U4/A	NAND2	0	3	f
U4/Y	NAND2	1	4	r
M[1]	(out)	0	4	r
=================================================
Data Required time			10
Data Arrival time			4
=================================================
Slack			6
}
Input Vector {
A[0]-TOP = r
A[1]-TOP = 1
B[0]-TOP = 0
B[1]-TOP = 1
}
{ Path 3 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
A[0]	(in)	0	0	r
U10/A	NAND2	0	0	r
U10/Y	NAND2	1	1	f
U9/A	NOT1	0	1	f
U9/Y	NOT1	1	2	r
U7/A	NAND2	0	2	r
U7/Y	NAND2	1	3	f
U4/A	NAND2	0	3	f
U4/Y	NAND2	1	4	r
M[1]	(out)	0	4	r
=================================================
Data Required time			10
Data Arrival time			4
=================================================
Slack			6
}
Input Vector {
A[0]-TOP = r
A[1]-TOP = 0
B[0]-TOP = 1
B[1]-TOP = 1
}
{ Path 4 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
A[0]	(in)	0	0	r
U10/A	NAND2	0	0	r
U10/Y	NAND2	1	1	f
U9/A	NOT1	0	1	f
U9/Y	NOT1	1	2	r
U3/B	NAND2	0	2	r
U3/Y	NAND2	1	3	f
U2/B	AND2	0	3	f
U2/Y	AND2	1	4	f
U1/A	AND2	0	4	f
U1/Y	AND2	1	5	f
M[2]	(out)	0	5	f
=================================================
Data Required time			10
Data Arrival time			5
=================================================
Slack			5
}
Input Vector {
A[0]-TOP = r
A[1]-TOP = 1
B[0]-TOP = 1
B[1]-TOP = 1
}
{ Path 5 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
A[0]	(in)	0	0	f
U10/A	NAND2	0	0	f
U10/Y	NAND2	1	1	r
U9/A	NOT1	0	1	r
U9/Y	NOT1	1	2	f
U7/A	NAND2	0	2	f
U7/Y	NAND2	1	3	r
U4/A	NAND2	0	3	r
U4/Y	NAND2	1	4	f
M[1]	(out)	0	4	f
=================================================
Data Required time			10
Data Arrival time			4
=================================================
Slack			6
}
Input Vector {
A[0]-TOP = f
A[1]-TOP = 0
B[0]-TOP = 0
B[1]-TOP = 1
}
{ Path 6 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
A[0]	(in)	0	0	f
U10/A	NAND2	0	0	f
U10/Y	NAND2	1	1	r
U9/A	NOT1	0	1	r
U9/Y	NOT1	1	2	f
U7/A	NAND2	0	2	f
U7/Y	NAND2	1	3	r
U4/A	NAND2	0	3	r
U4/Y	NAND2	1	4	f
M[1]	(out)	0	4	f
=================================================
Data Required time			10
Data Arrival time			4
=================================================
Slack			6
}
Input Vector {
A[0]-TOP = f
A[1]-TOP = 1
B[0]-TOP = 0
B[1]-TOP = 1
}
{ Path 7 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
A[0]	(in)	0	0	f
U10/A	NAND2	0	0	f
U10/Y	NAND2	1	1	r
U9/A	NOT1	0	1	r
U9/Y	NOT1	1	2	f
U7/A	NAND2	0	2	f
U7/Y	NAND2	1	3	r
U4/A	NAND2	0	3	r
U4/Y	NAND2	1	4	f
M[1]	(out)	0	4	f
=================================================
Data Required time			10
Data Arrival time			4
=================================================
Slack			6
}
Input Vector {
A[0]-TOP = f
A[1]-TOP = 0
B[0]-TOP = 1
B[1]-TOP = 1
}
{ Path 8 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
A[0]	(in)	0	0	f
U10/A	NAND2	0	0	f
U10/Y	NAND2	1	1	r
U9/A	NOT1	0	1	r
U9/Y	NOT1	1	2	f
U3/B	NAND2	0	2	f
U3/Y	NAND2	1	3	r
U2/B	AND2	0	3	r
U2/Y	AND2	1	4	r
U1/A	AND2	0	4	r
U1/Y	AND2	1	5	r
M[2]	(out)	0	5	r
=================================================
Data Required time			10
Data Arrival time			5
=================================================
Slack			5
}
Input Vector {
A[0]-TOP = f
A[1]-TOP = 1
B[0]-TOP = 1
B[1]-TOP = 1
}
{ Path 9 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
A[1]	(in)	0	0	r
U8/B	NAND2	0	0	r
U8/Y	NAND2	1	1	f
U6/A	NOT1	0	1	f
U6/Y	NOT1	1	2	r
U5/A	NAND2	0	2	r
U5/Y	NAND2	1	3	f
U4/B	NAND2	0	3	f
U4/Y	NAND2	1	4	r
M[1]	(out)	0	4	r
=================================================
Data Required time			10
Data Arrival time			4
=================================================
Slack			6
}
Input Vector {
A[0]-TOP = 0
A[1]-TOP = r
B[0]-TOP = 1
B[1]-TOP = 0
}
{ Path 10 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
A[1]	(in)	0	0	r
U8/B	NAND2	0	0	r
U8/Y	NAND2	1	1	f
U6/A	NOT1	0	1	f
U6/Y	NOT1	1	2	r
U5/A	NAND2	0	2	r
U5/Y	NAND2	1	3	f
U4/B	NAND2	0	3	f
U4/Y	NAND2	1	4	r
M[1]	(out)	0	4	r
=================================================
Data Required time			10
Data Arrival time			4
=================================================
Slack			6
}
Input Vector {
A[0]-TOP = 0
A[1]-TOP = r
B[0]-TOP = 1
B[1]-TOP = 1
}
{ Path 11 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
A[1]	(in)	0	0	r
U8/B	NAND2	0	0	r
U8/Y	NAND2	1	1	f
U6/A	NOT1	0	1	f
U6/Y	NOT1	1	2	r
U5/A	NAND2	0	2	r
U5/Y	NAND2	1	3	f
U4/B	NAND2	0	3	f
U4/Y	NAND2	1	4	r
M[1]	(out)	0	4	r
=================================================
Data Required time			10
Data Arrival time			4
=================================================
Slack			6
}
Input Vector {
A[0]-TOP = 1
A[1]-TOP = r
B[0]-TOP = 1
B[1]-TOP = 0
}
{ Path 12 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
A[1]	(in)	0	0	r
U8/B	NAND2	0	0	r
U8/Y	NAND2	1	1	f
U6/A	NOT1	0	1	f
U6/Y	NOT1	1	2	r
U3/A	NAND2	0	2	r
U3/Y	NAND2	1	3	f
U2/B	AND2	0	3	f
U2/Y	AND2	1	4	f
U1/A	AND2	0	4	f
U1/Y	AND2	1	5	f
M[2]	(out)	0	5	f
=================================================
Data Required time			10
Data Arrival time			5
=================================================
Slack			5
}
Input Vector {
A[0]-TOP = 1
A[1]-TOP = r
B[0]-TOP = 1
B[1]-TOP = 1
}
{ Path 13 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
A[1]	(in)	0	0	f
U8/B	NAND2	0	0	f
U8/Y	NAND2	1	1	r
U6/A	NOT1	0	1	r
U6/Y	NOT1	1	2	f
U5/A	NAND2	0	2	f
U5/Y	NAND2	1	3	r
U4/B	NAND2	0	3	r
U4/Y	NAND2	1	4	f
M[1]	(out)	0	4	f
=================================================
Data Required time			10
Data Arrival time			4
=================================================
Slack			6
}
Input Vector {
A[0]-TOP = 0
A[1]-TOP = f
B[0]-TOP = 1
B[1]-TOP = 0
}
{ Path 14 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
A[1]	(in)	0	0	f
U8/B	NAND2	0	0	f
U8/Y	NAND2	1	1	r
U6/A	NOT1	0	1	r
U6/Y	NOT1	1	2	f
U5/A	NAND2	0	2	f
U5/Y	NAND2	1	3	r
U4/B	NAND2	0	3	r
U4/Y	NAND2	1	4	f
M[1]	(out)	0	4	f
=================================================
Data Required time			10
Data Arrival time			4
=================================================
Slack			6
}
Input Vector {
A[0]-TOP = 0
A[1]-TOP = f
B[0]-TOP = 1
B[1]-TOP = 1
}
{ Path 15 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
A[1]	(in)	0	0	f
U8/B	NAND2	0	0	f
U8/Y	NAND2	1	1	r
U6/A	NOT1	0	1	r
U6/Y	NOT1	1	2	f
U5/A	NAND2	0	2	f
U5/Y	NAND2	1	3	r
U4/B	NAND2	0	3	r
U4/Y	NAND2	1	4	f
M[1]	(out)	0	4	f
=================================================
Data Required time			10
Data Arrival time			4
=================================================
Slack			6
}
Input Vector {
A[0]-TOP = 1
A[1]-TOP = f
B[0]-TOP = 1
B[1]-TOP = 0
}
{ Path 16 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
B[0]	(in)	0	0	r
U8/A	NAND2	0	0	r
U8/Y	NAND2	1	1	f
U6/A	NOT1	0	1	f
U6/Y	NOT1	1	2	r
U5/A	NAND2	0	2	r
U5/Y	NAND2	1	3	f
U4/B	NAND2	0	3	f
U4/Y	NAND2	1	4	r
M[1]	(out)	0	4	r
=================================================
Data Required time			10
Data Arrival time			4
=================================================
Slack			6
}
Input Vector {
A[0]-TOP = 0
A[1]-TOP = 1
B[0]-TOP = r
B[1]-TOP = 0
}
{ Path 17 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
B[0]	(in)	0	0	r
U8/A	NAND2	0	0	r
U8/Y	NAND2	1	1	f
U6/A	NOT1	0	1	f
U6/Y	NOT1	1	2	r
U5/A	NAND2	0	2	r
U5/Y	NAND2	1	3	f
U4/B	NAND2	0	3	f
U4/Y	NAND2	1	4	r
M[1]	(out)	0	4	r
=================================================
Data Required time			10
Data Arrival time			4
=================================================
Slack			6
}
Input Vector {
A[0]-TOP = 0
A[1]-TOP = 1
B[0]-TOP = r
B[1]-TOP = 1
}
{ Path 18 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
B[0]	(in)	0	0	r
U8/A	NAND2	0	0	r
U8/Y	NAND2	1	1	f
U6/A	NOT1	0	1	f
U6/Y	NOT1	1	2	r
U5/A	NAND2	0	2	r
U5/Y	NAND2	1	3	f
U4/B	NAND2	0	3	f
U4/Y	NAND2	1	4	r
M[1]	(out)	0	4	r
=================================================
Data Required time			10
Data Arrival time			4
=================================================
Slack			6
}
Input Vector {
A[0]-TOP = 1
A[1]-TOP = 1
B[0]-TOP = r
B[1]-TOP = 0
}
{ Path 19 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
B[0]	(in)	0	0	r
U8/A	NAND2	0	0	r
U8/Y	NAND2	1	1	f
U6/A	NOT1	0	1	f
U6/Y	NOT1	1	2	r
U3/A	NAND2	0	2	r
U3/Y	NAND2	1	3	f
U2/B	AND2	0	3	f
U2/Y	AND2	1	4	f
U1/A	AND2	0	4	f
U1/Y	AND2	1	5	f
M[2]	(out)	0	5	f
=================================================
Data Required time			10
Data Arrival time			5
=================================================
Slack			5
}
Input Vector {
A[0]-TOP = 1
A[1]-TOP = 1
B[0]-TOP = r
B[1]-TOP = 1
}
{ Path 20 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
B[0]	(in)	0	0	f
U8/A	NAND2	0	0	f
U8/Y	NAND2	1	1	r
U6/A	NOT1	0	1	r
U6/Y	NOT1	1	2	f
U5/A	NAND2	0	2	f
U5/Y	NAND2	1	3	r
U4/B	NAND2	0	3	r
U4/Y	NAND2	1	4	f
M[1]	(out)	0	4	f
=================================================
Data Required time			10
Data Arrival time			4
=================================================
Slack			6
}
Input Vector {
A[0]-TOP = 0
A[1]-TOP = 1
B[0]-TOP = f
B[1]-TOP = 0
}
{ Path 21 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
B[0]	(in)	0	0	f
U8/A	NAND2	0	0	f
U8/Y	NAND2	1	1	r
U6/A	NOT1	0	1	r
U6/Y	NOT1	1	2	f
U5/A	NAND2	0	2	f
U5/Y	NAND2	1	3	r
U4/B	NAND2	0	3	r
U4/Y	NAND2	1	4	f
M[1]	(out)	0	4	f
=================================================
Data Required time			10
Data Arrival time			4
=================================================
Slack			6
}
Input Vector {
A[0]-TOP = 0
A[1]-TOP = 1
B[0]-TOP = f
B[1]-TOP = 1
}
{ Path 22 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
B[0]	(in)	0	0	f
U8/A	NAND2	0	0	f
U8/Y	NAND2	1	1	r
U6/A	NOT1	0	1	r
U6/Y	NOT1	1	2	f
U5/A	NAND2	0	2	f
U5/Y	NAND2	1	3	r
U4/B	NAND2	0	3	r
U4/Y	NAND2	1	4	f
M[1]	(out)	0	4	f
=================================================
Data Required time			10
Data Arrival time			4
=================================================
Slack			6
}
Input Vector {
A[0]-TOP = 1
A[1]-TOP = 1
B[0]-TOP = f
B[1]-TOP = 0
}
{ Path 23 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
B[0]	(in)	0	0	f
U8/A	NAND2	0	0	f
U8/Y	NAND2	1	1	r
U6/A	NOT1	0	1	r
U6/Y	NOT1	1	2	f
U3/A	NAND2	0	2	f
U3/Y	NAND2	1	3	r
U2/B	AND2	0	3	r
U2/Y	AND2	1	4	r
U1/A	AND2	0	4	r
U1/Y	AND2	1	5	r
M[2]	(out)	0	5	r
=================================================
Data Required time			10
Data Arrival time			5
=================================================
Slack			5
}
Input Vector {
A[0]-TOP = 1
A[1]-TOP = 1
B[0]-TOP = f
B[1]-TOP = 1
}
{ Path 24 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
B[1]	(in)	0	0	r
U10/B	NAND2	0	0	r
U10/Y	NAND2	1	1	f
U9/A	NOT1	0	1	f
U9/Y	NOT1	1	2	r
U7/A	NAND2	0	2	r
U7/Y	NAND2	1	3	f
U4/A	NAND2	0	3	f
U4/Y	NAND2	1	4	r
M[1]	(out)	0	4	r
=================================================
Data Required time			10
Data Arrival time			4
=================================================
Slack			6
}
Input Vector {
A[0]-TOP = 1
A[1]-TOP = 0
B[0]-TOP = 0
B[1]-TOP = r
}
{ Path 25 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
B[1]	(in)	0	0	r
U10/B	NAND2	0	0	r
U10/Y	NAND2	1	1	f
U9/A	NOT1	0	1	f
U9/Y	NOT1	1	2	r
U7/A	NAND2	0	2	r
U7/Y	NAND2	1	3	f
U4/A	NAND2	0	3	f
U4/Y	NAND2	1	4	r
M[1]	(out)	0	4	r
=================================================
Data Required time			10
Data Arrival time			4
=================================================
Slack			6
}
Input Vector {
A[0]-TOP = 1
A[1]-TOP = 1
B[0]-TOP = 0
B[1]-TOP = r
}
{ Path 26 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
B[1]	(in)	0	0	r
U10/B	NAND2	0	0	r
U10/Y	NAND2	1	1	f
U9/A	NOT1	0	1	f
U9/Y	NOT1	1	2	r
U7/A	NAND2	0	2	r
U7/Y	NAND2	1	3	f
U4/A	NAND2	0	3	f
U4/Y	NAND2	1	4	r
M[1]	(out)	0	4	r
=================================================
Data Required time			10
Data Arrival time			4
=================================================
Slack			6
}
Input Vector {
A[0]-TOP = 1
A[1]-TOP = 0
B[0]-TOP = 1
B[1]-TOP = r
}
{ Path 27 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
B[1]	(in)	0	0	r
U10/B	NAND2	0	0	r
U10/Y	NAND2	1	1	f
U9/A	NOT1	0	1	f
U9/Y	NOT1	1	2	r
U3/B	NAND2	0	2	r
U3/Y	NAND2	1	3	f
U2/B	AND2	0	3	f
U2/Y	AND2	1	4	f
U1/A	AND2	0	4	f
U1/Y	AND2	1	5	f
M[2]	(out)	0	5	f
=================================================
Data Required time			10
Data Arrival time			5
=================================================
Slack			5
}
Input Vector {
A[0]-TOP = 1
A[1]-TOP = 1
B[0]-TOP = 1
B[1]-TOP = r
}
{ Path 28 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
B[1]	(in)	0	0	f
U10/B	NAND2	0	0	f
U10/Y	NAND2	1	1	r
U9/A	NOT1	0	1	r
U9/Y	NOT1	1	2	f
U7/A	NAND2	0	2	f
U7/Y	NAND2	1	3	r
U4/A	NAND2	0	3	r
U4/Y	NAND2	1	4	f
M[1]	(out)	0	4	f
=================================================
Data Required time			10
Data Arrival time			4
=================================================
Slack			6
}
Input Vector {
A[0]-TOP = 1
A[1]-TOP = 0
B[0]-TOP = 0
B[1]-TOP = f
}
{ Path 29 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
B[1]	(in)	0	0	f
U10/B	NAND2	0	0	f
U10/Y	NAND2	1	1	r
U9/A	NOT1	0	1	r
U9/Y	NOT1	1	2	f
U7/A	NAND2	0	2	f
U7/Y	NAND2	1	3	r
U4/A	NAND2	0	3	r
U4/Y	NAND2	1	4	f
M[1]	(out)	0	4	f
=================================================
Data Required time			10
Data Arrival time			4
=================================================
Slack			6
}
Input Vector {
A[0]-TOP = 1
A[1]-TOP = 1
B[0]-TOP = 0
B[1]-TOP = f
}
{ Path 30 }
A true Path list {
=================================================
pin	type	incr	path_delay
=================================================
B[1]	(in)	0	0	f
U10/B	NAND2	0	0	f
U10/Y	NAND2	1	1	r
U9/A	NOT1	0	1	r
U9/Y	NOT1	1	2	f
U7/A	NAND2	0	2	f
U7/Y	NAND2	1	3	r
U4/A	NAND2	0	3	r
U4/Y	NAND2	1	4	f
M[1]	(out)	0	4	f
=================================================
Data Required time			10
Data Arrival time			4
=================================================
Slack			6
}
Input Vector {
A[0]-TOP = 1
A[1]-TOP = 0
B[0]-TOP = 1
B[1]-TOP = f
}
