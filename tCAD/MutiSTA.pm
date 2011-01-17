
#!/usr/bin/perl

package tCAD::MutiSTA;
use tCAD::GRAPH;
use tCAD::util;
use POSIX; 
use Bit::Vector;
use Data::Dumper;
use strict;

sub new {
 my $class = shift;
 my $self = { 
                top_list    => shift,
                ready_list  => [],
                iready_list => {},
                logic_list  => {},
                search_list => [],
                require_time=> 0, 
                slack_time  => 0,
                path_id     => 1,
                vector_list => [],
                report_list => {},
           }; 
 bless $self, $class;
 return $self;
}

sub set_require_time_constrain {
    my ($self,$time) = (@_);
        $self->{require_time} = $time;
}

sub set_slack_time_constrain {
    my ($self,$time) = (@_);
        $self->{slack_time} = $time;
}

sub push_vector_list {
   my ($self,$vector) = (@_);
push (@{$self->{vector_list}},$vector);
}

sub rota_vector_list {
    my ($self) = (@_);
    my $vector_list = $self->get_vector_list();
  foreach my $vec (@{$vector_list}){
     my $tmp = $vec->[0];
     for(my $i=1; $i<=$#$vec; $i++){
         $vec->[$i-1] = $vec->[$i];
     }
     $vec->[$#$vec] = $tmp;
  }
}

sub get_vector_list {
    my ($self) = (@_);
return $self->{vector_list};
}

sub push_ready_list {
    my ($self,$name) = (@_);   

if( !defined($self->{iready_list}->{$name} )){
     push (@{$self->{ready_list}},$name);
     $self->{iready_list}->{$name} = 1;
  }
}

sub pop_ready_list {
    my ($self) = (@_);
return pop @{$self->{ready_list}};
}

sub shft_ready_list {
    my ($self) = (@_);
    my $name = shift @{$self->{ready_list}};
    delete $self->{iready_list}->{$name};
return $name;
}

sub is_ready_list_empty {
    my ($self) = (@_);
    if(!@{$self->{ready_list}}){ return 0 }
return -1;
}

sub push_search_list {
    my ($self,$name) = (@_);
    push (@{$self->{search_list}},$name);  
}

sub pop_search_list {
    my ($self,$name) = (@_);
return pop (@{$self->{search_list}});
}

sub get_search_list {
    my ($self) = (@_);
return $self->{search_list};
}

sub set_logic_list {
   my ($self,$time,$logic) = (@_);
   my $nw_time = $time;
       if( defined($self->{logic_list}->{$time}) ){ $nw_time = -1; }
       $self->{logic_list}->{$nw_time} = $logic;
}

sub clr_logic_list {
   my ($self) = (@_);
   $self->{logic_list} = {};
}

sub get_logic_list_2_tTable {
   my ($self) = (@_);

    my @time = ( sort keys %{$self->{logic_list}});
       if($#time==1){ return 'P:'.$self->{logic_list}->{$time[0]}.','.'N:'.$self->{logic_list}->{$time[1]}; }
    elsif($#time==0){ return 'P:'.$self->{logic_list}->{$time[0]};                                      }
    else { 
      print Dumper($self->{top_list}->{util});

die "get_logic_list_2_tTable error\n"; }
}

sub set_report_list {
    my ($self) = (@_);
    my $search_list = $self->get_search_list();

    my $rpt = $search_list->[0]->{pin}."\t".
             '(in)'."\t".
             $search_list->[0]->{incr}."\t".
             $search_list->[0]->{path_delay}."\t".
             $search_list->[0]->{edge}."\n";
 

    my ($path,$incr);
    for(my $i=1; $i<=$#$search_list; $i++){
        $path = $search_list->[$i]->{path_delay};
        $incr = $search_list->[$i]->{incr};

        $path = (($path - $incr) != $search_list->[$i-1]->{path_delay})? $search_list->[$i-1]->{path_delay} + $incr : $path;
        $search_list->[$i]->{path_delay} = $path;

        $incr = $search_list->[$i-1]->{incr};
   
        if($search_list->[$i]->{edge} eq 'r' || 
           $search_list->[$i]->{edge} eq 'f' ){
       
        my $type = ($i==$#$search_list)? '(out)' : $search_list->[$i]->{type};
          $rpt = $rpt.$search_list->[$i]->{pin}."\t".
                       $type."\t".
                       $incr."\t".
                       $path."\t".
                       $search_list->[$i]->{edge}."\n";
      }
    }
    
    my $slack = $self->{require_time} - $path;
    if( $slack <= $self->{slack_time}){
 
    if( !defined($self->{report_list}->{$rpt}) ){
#       $self->{report_list}->{$rpt} = 1; 
       print "{ Path ".$self->{path_id}++." }\n";
       print "A true Path list {\n";
       print "=================================================\n";
       print "pin\ttype\tincr\tpath_delay\n";
       print "=================================================\n";
       print $rpt;
       print "=================================================\n";
       print "Data Required time\t\t\t".$self->{require_time}."\n";
       print "Data Arrival time\t\t\t".$path."\n";
       print "=================================================\n";
       print "Slack\t\t\t".$slack."\n";
       print "}\n";
       print "Input Vector {\n";
       my $input_list = $self->{top_list}->{Graph_list}->get_input_lists();
       foreach my $input (@{$input_list}){
       my $vector = $self->{top_list}->{Graph_list}->get_time_logic_vertex($input);
       print $input.' = '.$vector."\n";
       }
       print "}\n";
    }
  } 
}


sub get_path_list {
    my ($self,$top,$vertex) = (@_);

    my $tim_wght = $self->{top_list}->{Graph_list}->get_time_weighted_vertex($vertex);
    my $tim_lgic = $self->{top_list}->{Graph_list}->get_time_logic_vertex($vertex);    
    my $tim_inc  = $self->{top_list}->{util}->get_cell_module_delay($tim_lgic) || 0;
    my ($pin,$type) = split('-',$vertex);

##    print $vertex.'->'.$tim_lgic."\n";
 
    if( $tim_lgic eq 'f' || 
        $tim_lgic eq 'r' || 
        $self->{top_list}->{util}->is_cell_module_deep($tim_lgic)==0 ){
     
        $self->push_search_list( { pin  => $pin, 
                                   type => $type,
                                   incr => $tim_inc,
                                   path_delay => $tim_wght,
                                   edge => $tim_lgic,} );

    }

    my $nxt_vex_list = $self->{top_list}->{Graph_list}->get_vertex_nxt_stack($vertex);     

    foreach my $nxt_vex (@{$nxt_vex_list}){
            my $nxt_tim_lgic = $self->{top_list}->{Graph_list}->get_time_logic_vertex($nxt_vex);
            if( $nxt_tim_lgic eq 'f' ||
                $nxt_tim_lgic eq 'r' ||
                $self->{top_list}->{util}->is_cell_module_deep($nxt_tim_lgic)==0 ){
                $self->get_path_list($top,$nxt_vex);
                $self->pop_search_list();
            } 
   }


   if($self->{top_list}->{Graph_list}->is_output_list_exist($vertex)==0){
      $self->set_report_list();
      return 0; 
    }
}

sub set_ini_vector_list {
    my ($self) = (@_);

    my $input_list = $self->{top_list}->{Graph_list}->get_input_lists();
    my $input_len  = $#$input_list;
       if( !($input_len >= 1)){ die "set_ini_vector_list\n"; }

    my $pow = POSIX::pow(2,$input_len);

    for(my $i=0; $i<$pow; $i++){
    my $vec = Bit::Vector->new_Dec($input_len, $i);
    my $bin = $vec->to_Bin();
    my $tmp_st;
         @{$tmp_st} = (split("",$bin));
        push (@{$tmp_st},'x'); 
        $self->push_vector_list($tmp_st);
     }
}





sub run_MutiSTA_path {
    my ($self) = (@_);

   while( $self->is_ready_list_empty()!=0 ){
       my $cur_vex      = $self->shft_ready_list();
       my $cur_tim_wght = $self->{top_list}->{Graph_list}->get_time_weighted_vertex($cur_vex);
       my $cur_tim_lgic = $self->{top_list}->{Graph_list}->get_time_logic_vertex($cur_vex);
       my $nxt_vex_list = $self->{top_list}->{Graph_list}->get_vertex_nxt_stack($cur_vex);

       #print $cur_vex.'->'.$cur_tim_lgic.'->'.$cur_tim_wght."\n";

       my $pre_vex_list = $self->{top_list}->{Graph_list}->get_vertex_pre_stack($cur_vex); 
       foreach my $pre_vex (@{$pre_vex_list}){
               my $pre_tim_wght = $self->{top_list}->{Graph_list}->get_time_weighted_vertex($pre_vex);
               my $pre_tim_lgic = $self->{top_list}->{Graph_list}->get_time_logic_vertex($pre_vex);

               if($pre_tim_wght > $cur_tim_wght ){
                  $self->{top_list}->{Graph_list}->set_time_weighted_vertex($cur_vex,$pre_tim_wght);
                 }
 
               #set the logic list       
               if( $self->{top_list}->{util}->is_cell_module_deep($cur_tim_lgic)==0 ){  
                   $self->set_logic_list($pre_tim_wght,$pre_tim_lgic);
                 }
          }
        
        if( $self->{top_list}->{util}->is_cell_module_deep($cur_tim_lgic)==0 ){  
               $cur_tim_wght = $self->{top_list}->{Graph_list}->get_time_weighted_vertex($cur_vex);
            my $inc_delay    = $self->{top_list}->{util}->get_cell_module_delay($cur_tim_lgic);
            my $path_delay   = $cur_tim_wght + $inc_delay;
               $self->{top_list}->{Graph_list}->set_time_weighted_vertex($cur_vex,$path_delay);
            my $lgic_st      = $self->get_logic_list_2_tTable();
               $cur_tim_lgic = $self->{top_list}->{util}->get_cell_module_tTable($cur_tim_lgic,$lgic_st); 
               $self->clr_logic_list();
       }

       if($cur_tim_lgic ne 'x' ){
          #update the nxt list        
          foreach my $nxt_vex (@{$nxt_vex_list}){
                  my $nxt_tim_lgic = $self->{top_list}->{Graph_list}->get_time_logic_vertex($nxt_vex);
                 
                  if( $self->{top_list}->{util}->is_cell_module_deep($nxt_tim_lgic) !=0 ){
                      $self->{top_list}->{Graph_list}->set_time_logic_vertex($nxt_vex,$cur_tim_lgic); 
                   }
                      $self->push_ready_list($nxt_vex);        
        }
      }

       $self->run_MutiSTA_path();
     }
   
}

sub run_MutiSTA {
    my ($self,$top) = (@_);

   $self->set_ini_vector_list();
my $input_list  = $self->{top_list}->{Graph_list}->get_input_lists(); 
my $path;

for(my $i=0; $i<=$#$input_list; $i++){
 for(my $time =0; $time<=1; $time++ ){
     my $vector_list = $self->get_vector_list();
  
   foreach my $vec (@{$vector_list}){ 
           my @vec_arr = @{$vec};
    foreach my $input (@{$input_list}){
          my $st = pop @vec_arr;
           if( $st eq 'x' ){ $path = $input; }
           $st = ($st eq 'x' && $time == 0)? 'r' : 
                 ($st eq 'x' && $time == 1)? 'f' : $st; 
          
           $self->push_ready_list($input);
           $self->{top_list}->{Graph_list}->set_time_logic_vertex($input,$st);
         }
           $self->run_MutiSTA_path();
           $self->get_path_list($top,$path);

           $self->{top_list}->{Graph_list}->clr_time_weighted_vertices();
           $self->{top_list}->{Graph_list}->clr_time_logic_vertices();
           $self->free();
   }
 }
   $self->rota_vector_list();
}

}

sub get_debug {
    my ($self,$top) = (@_);
#print Dumper($self->{top_list}->{Graph_list});
#    $self->push_ready_list('A[0]-TOP');
#    $self->push_ready_list('A[1]-TOP');
#    $self->push_ready_list('B[0]-TOP');
#    $self->push_ready_list('B[1]-TOP');
#
#    $self->{top_list}->{Graph_list}->set_time_logic_vertex('A[0]-TOP','1');
#    $self->{top_list}->{Graph_list}->set_time_logic_vertex('A[1]-TOP','1');
#    $self->{top_list}->{Graph_list}->set_time_logic_vertex('B[0]-TOP','1');
#    $self->{top_list}->{Graph_list}->set_time_logic_vertex('B[1]-TOP','f');
#
#   
#    $self->run_MutiSTA_path();
#    $self->get_path_list($top,'B[1]-TOP');
#
#    $self->{top_list}->{Graph_list}->clr_time_weighted_vertices();
#    $self->{top_list}->{Graph_list}->clr_time_logic_vertices();
#
#    $self->push_ready_list('A[0]-TOP');
#    $self->push_ready_list('A[1]-TOP');
#    $self->push_ready_list('B[0]-TOP');
#    $self->push_ready_list('B[1]-TOP');
#
#    $self->{top_list}->{Graph_list}->set_time_logic_vertex('A[0]-TOP','r');
#    $self->{top_list}->{Graph_list}->set_time_logic_vertex('A[1]-TOP','1');
#    $self->{top_list}->{Graph_list}->set_time_logic_vertex('B[0]-TOP','1');
#    $self->{top_list}->{Graph_list}->set_time_logic_vertex('B[1]-TOP','1');
#    
#    $self->run_MutiSTA_path();
#    $self->get_path_list($top,'A[0]-TOP');
#    $self->{top_list}->{Graph_list}->clr_time_weighted_vertices();
#    $self->{top_list}->{Graph_list}->clr_time_logic_vertices();
#  
}

sub free {
    my ($self) = (@_);
        $self->{ready_list}  = [];
        $self->{iready_list} = {};
        $self->{logic_list}  = {};
        $self->{search_list} = [];
}

1;
