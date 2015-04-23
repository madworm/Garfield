#!/usr/bin/perl

my $maxday = 31;

for (my $Year = 1978; $Year <= 2015; $Year++) {

	open(FILE, ">$Year.html");

	print FILE "<!DOCTYPE html PUBLIC \"-\/\/W3C\/\/DTD HTML 4.01\/\/EN\" \"http:\/\/www.w3.org\/TR\/html4\/strict.dtd\">\n";
	print FILE "<html lang=\"en\">\n";
	print FILE "<head>\n";
	print FILE "<meta http-equiv=\"content-type\" content=\"text\/html; charset=utf-8\">\n";
	print FILE "<title>All Garfields<\/title>\n";
	print FILE "<\/head>\n";
	print FILE "<body>\n\n\n";

	for (my $month = 1; $month <= 12; $month++) {

		for (my $day = 1; $day <= $maxday; $day++) {
			$month = 1 * $month;
			$day = 1 * $day;

			if ($month < 10) {
				$month = join('', (0, $month));
			}
			if ($day < 10) {
				$day = join('', (0, $day));
			}
			$year = substr($Year, 2, 2);

			print FILE "<center>\n";
			print FILE "<img src=\"http://images.ucomics.com/comics/ga/$Year/ga$year$month$day.gif\"><br><br>\n";
			print FILE "<b>$day - $month - $Year</b>\n";
			print FILE "<br><br><br>\n";
			print FILE "</center>\n\n";
		}

	}
	print FILE "\n</body>\n";
	print FILE "</html>\n";
	close(FILE);

}
