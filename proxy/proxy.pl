while (<STDIN>) {
  chomp;
  if (/^DIE$/) { 
    print "#aard #var proxy_enabled 0\n";  
    exit; 
  }
} 
