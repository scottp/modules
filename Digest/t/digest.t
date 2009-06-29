use Test;
use Digest;
plan 11;

my $text = "The quick brown fox jumps over the lazy dog";

ok(Digest::digest($text) eq "9e107d9d372bb6826bd81d3542a419d6");
ok(Digest::digest($text, "md5") eq "9e107d9d372bb6826bd81d3542a419d6");
ok(Digest::digest($text, "sha1") eq "2fd4e1c67a2d28fced849ee1bb76e7391b93eb12");
ok(Digest::digest($text, "sha256") eq "d7a8fbb307d7809469ca9abcb0082e4f8d5651e46d3cdb762d02d0bf37c9e592");
ok(Digest::digest($text, "sha512") eq "07e547d9586f6a73f73fbac0435ed76951218fb7d0c8d788a309d785436bbb642e93a252a954f23912547d1e8a3b5ed6e1bfd7097821233fa0538f3db854fee6");
ok(Digest::digest($text, "ripemd160") eq "37f332f68db77bd9d7edd4969571ad671cf9dd3b");

ok(Digest::md5($text) eq "9e107d9d372bb6826bd81d3542a419d6");
ok(Digest::sha1($text) eq "2fd4e1c67a2d28fced849ee1bb76e7391b93eb12");
ok(Digest::sha256($text) eq "d7a8fbb307d7809469ca9abcb0082e4f8d5651e46d3cdb762d02d0bf37c9e592");
ok(Digest::sha512($text) eq "07e547d9586f6a73f73fbac0435ed76951218fb7d0c8d788a309d785436bbb642e93a252a954f23912547d1e8a3b5ed6e1bfd7097821233fa0538f3db854fee6");
ok(Digest::ripemd160($text) eq "37f332f68db77bd9d7edd4969571ad671cf9dd3b");
