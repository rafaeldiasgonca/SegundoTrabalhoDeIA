% Definindo probabilidades
0.4::flw.
0.6::\+flw.

0.9::r :- str(snow_covered), flw.
0.4::r :- str(snow_covered), \+flw.
0.7::r :- str(wet), flw.
0.2::r :- str(wet), \+flw.
0.4::r :- str(dry), flw.
0.1::r :- str(dry), \+flw.

0.9::v :- r.
0.1::v :- \+r.

% Definindo probabilidade de str (Condição da rua)
1/3::str(dry).
1/3::str(wet).
1/3::str(snow_covered).

% Consultas
query(v).
evidence(str(snow_covered)).
