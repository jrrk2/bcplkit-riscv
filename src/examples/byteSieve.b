
// BYTE SIEVE - INTEGER VERSION

GET "LIBHDR"

MANIFEST
$(
  SIZE = 4095
$)

LET START () = VALOF
$(
  LET FLAGS = VEC (SIZE + 1)
  LET COUNT = 0

  WRITES ("STARTING*N")
  UNLESS FLAGS THEN
  $(
    WRITES ("OUT OF MEMORY*N")
    RESULTIS 1
  $)

  FOR I = 0 TO SIZE DO
    FLAGS!I := TRUE

  FOR I = 0 TO SIZE DO
  $(
    LET PRIME, K = ?, ?

    IF FLAGS!I THEN
    $(

      PRIME := I + I + 3
      K     := I + PRIME
      WHILE K <= SIZE DO
      $(
	FLAGS!K := FALSE
	K := K + PRIME
      $)
      COUNT := COUNT + 1
    $)
  $)

  WRITEF ("  %I  PRIMES FOUND.*N", COUNT)

  RESULTIS 0
$)
