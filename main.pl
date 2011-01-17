
use tCAD::VeriParser;
use tCAD::util;
use tCAD::GRAPH;
use tCAD::MutiSTA;

use strict;
use Data::Dumper;

sub get_usage {
  print STDOUT '

#=============================================#
# Muti core STA @ static timing report  
# author : sean chen
# mail : funningboy@gmail.com
# license: FBS
# publish: 2011/01/15 v1
# project reference : http://cad_contest.cs.nctu.edu.tw/cad11/Problem/99/A3_STA_0104.pdf
#=============================================#

<USAGE>

-design [ design_file_list ]
-library [ library_file_list ]
-top_desing_name [ top_design_module_name ]
-require_time [ require_time ]
-slack_time [ slack_time ]

</USAGE>

ex: perl main.pl -design in/inDes.v -library in/Lib.v \
         -top_design_name TOP -require_time 10 -slack_time 6

';
die "\n";
}

if(!@ARGV){ get_usage(); }

my @design;
my @library;
my $top_design;
my $require_time;
my $slack_time;
my $sel;
my $chk;

while(@ARGV){
  $_ = shift @ARGV;

    if( /-design/         ){ $sel = 0; $chk++; }
 elsif( /-library/        ){ $sel = 1; $chk++; }
 elsif( /-top_design_name/){ $sel = 2; $chk++; }
 elsif( /-require_time/   ){ $sel = 3; $chk++; } 
 elsif( /-slack_time/     ){ $sel = 4; $chk++; } 

    if($sel == 0 ){ push (@design, shift @ARGV); }
 elsif($sel == 1 ){ push (@library,shift @ARGV); }
 elsif($sel == 2 ){ $top_design  = shift @ARGV;  }
 elsif($sel == 3 ){ $require_time= shift @ARGV;  }
 elsif($sel == 4 ){ $slack_time  = shift @ARGV;  }

}

if($chk!=5){
   get_usage();
}

#===========================================
# cat design && lib files
#===========================================
foreach my $dsgn (@design){
   `cat $dsgn >> iveri.iv`;
}
foreach my $lib (@library){
   `cat $lib >> iveri.iv`;
}

#============================================
# parser verilog file
# @ input  : verilog file
# @ return : verilog_DD
#============================================
my $veri_ptr  = tCAD::VeriParser->new();
my $veri_rst  = $veri_ptr->parser_files('iveri.iv');

my $util_ptr  = tCAD::util->new();
   $util_ptr->set_verilog_DD($veri_rst);
   $util_ptr->get_check_rst($top_design);
   $util_ptr->get_debug();
   $util_ptr->free();

#============================================
# get pop up Graph @ vertex && edge
# @ input  : verilog DD
# @ return : DFG graph
#============================================
my $graph_ptr = tCAD::GRAPH->new($util_ptr);
   $graph_ptr->run_graph_DD($top_design,-1);
   $graph_ptr->dump_graphviz_file($top_design.'.dot');
   $graph_ptr->free();

#============================================
# run MutiSTA report
# @ input  : DFG graph
# @ return : STA timing report
#============================================
my $sta_ptr  = tCAD::MutiSTA->new($graph_ptr);
   $sta_ptr->set_require_time_constrain($require_time);
   $sta_ptr->set_slack_time_constrain($slack_time);
   $sta_ptr->run_MutiSTA($top_design);
   $sta_ptr->free();

`rm iveri.iv`;
