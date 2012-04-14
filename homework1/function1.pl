#!perl

my (%rgb, %cmy);
 
%rgb = (
        'yellow'  => ['red','green'],
        'cyan'    => ['green','blue'],
        'magenta' => ['blue','red'],
);
 
%cmy = invert_hash(%rgb);
 
foreach (keys %cmy) {
        print "$_ = @{$cmy{$_}}\n";
}
 
sub invert_hash {
        my (%hi) = @_ if @_;
        my (%ho, $col);
 
        foreach $col (keys %hi) {
            foreach (@{$hi{$col}}){
                push @{$ho{$_}}, $col;
            }
        }
 
        return %ho;
}
