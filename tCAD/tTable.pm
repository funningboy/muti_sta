
#!/usr/bin/perl

package tCAD::tTable;
use Data::Dumper;
use strict;

sub new {
 my $class = shift;
 my $self = {  and   => { delay  => 1,
                          tTable => { 'P:0,N:0' => '0',
                                      'P:0,N:1' => '0',
                                      'P:0,N:f' => '0',
                                      'P:0,N:r' => '0',
                                      'P:0,N:x' => 'x',

                                      'P:1,N:0' => '0',
                                      'P:1,N:1' => '1',
                                      'P:1,N:f' => 'f',
                                      'P:1,N:r' => 'r',
                                      'P:1,N:x' => 'x',

                                      'P:f,N:0' => '0',
                                      'P:f,N:1' => 'f',
                                      'P:f,N:f' => 'f',
                                      'P:f,N:r' => '0',
                                      'P:f,N:x' => 'x',

                                      'P:r,N:0' => '0',
                                      'P:r,N:1' => 'r',
                                      'P:r,N:f' => 'f',
                                      'P:r,N:r' => 'r',
                                      'P:r,N:x' => 'x',

                                      'P:x,N:0' => 'x',
                                      'P:x,N:1' => 'x',
                                      'P:x,N:f' => 'x',
                                      'P:x,N:r' => 'x',
                                      'P:x,N:x' => 'x', 
                                      },
                                 },
                
                or   => { delay  => 1,
                          tTable => { 'P:0,N:0' => '0',
                                      'P:0,N:1' => '1',
                                      'P:0,N:f' => 'f',
                                      'P:0,N:r' => 'r',
                                      'P:0,N:x' => 'x',

                                      'P:1,N:0' => '1',
                                      'P:1,N:1' => '1',
                                      'P:1,N:f' => '1',
                                      'P:1,N:r' => '1',
                                      'P:1,N:x' => 'x', 

                                      'P:f,N:0' => 'f',
                                      'P:f,N:1' => '1',
                                      'P:f,N:f' => 'f',
                                      'P:f,N:r' => 'r',
                                      'P:f,N:x' => 'x',

                                      'P:r,N:0' => 'r',
                                      'P:r,N:1' => '1',
                                      'P:r,N:f' => 'f',
                                      'P:r,N:r' => 'r',
                                      'P:r,N:x' => 'x',

                                      'P:x,N:0' => 'x',
                                      'P:x,N:1' => 'x',
                                      'P:x,N:f' => 'x',
                                      'P:x,N:r' => 'x',
                                      'P:x,N:x' => 'x', 
                                      },
                                 },

                nand => { delay  => 1,
                          tTable => { 'P:0,N:0' => '1',
                                      'P:0,N:1' => '1',
                                      'P:0,N:f' => '1',
                                      'P:0,N:r' => '1',
                                      'P:0,N:x' => 'x',

                                      'P:1,N:0' => '1',
                                      'P:1,N:1' => '0',
                                      'P:1,N:f' => 'r',
                                      'P:1,N:r' => 'f',
                                      'P:1,N:x' => 'x',

                                      'P:f,N:0' => '1',
                                      'P:f,N:1' => 'r',
                                      'P:f,N:f' => 'r',
                                      'P:f,N:r' => '1',
                                      'P:f,N:x' => 'x',

                                      'P:r,N:0' => '1',
                                      'P:r,N:1' => 'f',
                                      'P:r,N:f' => 'r',
                                      'P:r,N:r' => 'f',
                                      'P:r,N:x' => 'x',

                                      'P:x,N:0' => 'x',
                                      'P:x,N:1' => 'x',
                                      'P:x,N:f' => 'x',
                                      'P:x,N:r' => 'x',
                                      'P:x,N:x' => 'x', 
                                      },
                                 },

                not  => { delay  => 1,
                          tTable => { 'P:0' => '1',
                                      'P:1' => '0',
                                      'P:f' => 'r',
                                      'P:r' => 'f',
                                      'P:x' => 'x',

                                   },
                                 },
                         
          }; 
 bless $self, $class;
 return $self;
}

1;
