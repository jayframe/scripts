#!/usr/local/bin/perl -w
"use strict";
$_ = q(s|(.*)|print "#!/usr/local/bin/perl -w\nuse strict;\n\$_ = 
q(",$1,");\n",$1,";\n"|e); 
s|(.*)|print "#!/usr/local/bin/perl -w\nuse strict;\n\$_ = 
q(",$1,");\n",$1,";\n"|e
