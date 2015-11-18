% 5/4 Cullen Bay
% Side
\version "2.18.2"
composerSide  = ""
snareEnd = \drummode {
	d8[:32)(-> g16.) g32]->
	d8[:32(->  g8]:32)(->
	d8[:32)(   g8]:32)(->
	d4)
	d4:32(
	|
	d8)         d8:32(
	\triplet { g16)[ d g } \flam d8]
	g16. d32-> g16. g32
	\flam d8 d16. g32 ->
	d16. d32 \flam g8
	|
	\flam d8. d16:64(
	d8) d8:32(
	\triplet { g16) d g } \flam d8
	d4:32(
	d4)
}
snareA = \drummode {
	\flam d8.[ g16]
	d8[:32( g8])
	\flam d8[ d8]:32(
	\triplet { g16[) d g } \flam d16. g32]
	\triplet { g16[ d g } \flam g8]
	|
	\snareEnd
}

snareB = \drummode{
	\flamd d8[ d16 \flam g16]
	r16 g16[ \flam d g]\v
	r16 d16[ \flam g8]
	\flam d4
	d4:32(
	|
	\snareEnd
}

snareC = \drummode{
	\flam d8-> \flam d16-> g->
	d16 d \flam g8
	g8 d8:32(
	\triplet { g16) d g } \flam d16. g32
	\triplet { g16 d g } \flam g8
	|
	\snareEnd
}

snareD = \drummode{
	\flam d16. g32 d16. g32->
	d32 g d g d16. g32
	d16. g32-> d32 g d g
	d4
	d4:32(
	|
	\snareEnd
}
