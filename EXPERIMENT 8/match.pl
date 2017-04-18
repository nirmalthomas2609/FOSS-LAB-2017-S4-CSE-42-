#!/usr/bin/perl

$bar = "This is teo and again teo";
if ($bar =~ /foo/){
   print "First time is matching\n";
}else{
   print "First time is not matching\n";
}

$bar = "foo";
if ($bar =~ /foo/){
   print "Second time is matching\n";
}else{
   print "Second time is not matching\n";
}
