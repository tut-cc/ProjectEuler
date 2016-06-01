use 5.012;

my $sum = 0;
foreach (1..999) {
    $sum += $_ if $_ %3 == 0 || $_ %5 == 0
}
say($sum)
