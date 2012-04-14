#!perl

my $str = 'eau de cologne myrrh';
print vowel_upper($str);
 
sub vowel_upper {
        ($s) = @_ if @_;
        $s =~ tr/aeiou/AEIOU/;
        return $s
}
