#!/usr/bin/perl
use v5.10;
print "Content-type: text/html\n\n";

$aiken = " ";
$numero= <STDIN>;
$numero= substr ($numero, 7);
#$numero= 252010;
  print "<h1>$numero " . $stibitz . "!</h1>\n";
while ($numero>=1){
$temp = $numero%10;
given($temp){
	when(0){$aiken ="0000 $aiken"; $stibitz ="0011 $stibitz";}
	when(1){$aiken ="0001 $aiken"; $stibitz ="0100 $stibitz";}
	when(2){$aiken ="0010 $aiken"; $stibitz ="0101 $stibitz";}
	when(3){$aiken ="0011 $aiken"; $stibitz ="0110 $stibitz";}
	when(4){$aiken ="0100 $aiken"; $stibitz ="0111 $stibitz";}
	when(5){$aiken ="1011 $aiken"; $stibitz ="1000 $stibitz";}
	when(6){$aiken ="1100 $aiken"; $stibitz ="1001 $stibitz";}
	when(7){$aiken ="1101 $aiken"; $stibitz ="1010 $stibitz";}
	when(8){$aiken ="1110 $aiken"; $stibitz ="1011 $stibitz";}
	when(9){$aiken ="1111 $aiken"; $stibitz ="1100 $stibitz";}
	}
$numero=$numero/10;
        print "<h1>Aiken:   $temp " . $aiken . "!</h1>\n ";
        print "<h1>Stibitz: $temp " . $stibitz . "!</h1>\n ";
}



print "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n";
print "<html xmlns=\"http://www.w3.org/1999/xhtml\">\n";
print "<head>\n";
print "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\" />\n";
print "<title>P&aacute;gina generada din&aacute;micamente con Perl</title>\n";
print "<link rel=\"stylesheet\" type=\"text/css\" href=\"../css/estilos.css\" />\n";
print "</head>\n";
print "<body>\n";
print "<h1>El codigo en Aiken es: $aiken  !</h1>\n";
print "<h1>El codigo en Stibitz es: $stibitz  !</h1>\n";
print "</body>\n";
print "</html>\n";