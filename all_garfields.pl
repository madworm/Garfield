#!/usr/bin/perl

my $maxday = 31;

for(my $Year=1978; $Year<=2015; $Year++){

open(FILE,">$Year.html");

for(my $month=1; $month<=12;$month++){

for(my $day=1;$day<=$maxday;$day++){
$month = 1 * $month;
$day = 1 * $day;

if ($month<10){$month = join('',(0,$month));}
if ($day<10){$day = join('',(0,$day));}
$year = substr($Year,2,2);

print FILE "<center><br>";
print FILE "<img
src=\"http://images.ucomics.com/comics/ga/$Year/ga$year$month$day.gif\"><br><br>\n";
print FILE "<b>$day - $month - $Year</b><br><br><br>\n";
print FILE "</center>";
}

}
close(FILE);

}
