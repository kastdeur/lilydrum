% 4/4 Molly Connell
% Side
\version "2.18.2"
composerSide  = "v1.0, 21-2-2014"
snareA = \drummode {
	\flam d4		\flam g8.[ d16:64(]		d8.[) \drag d16]		d8.[ g16] |
	d8.:64[( g16])		\triplet  { d16[ g d g d8]}		\triplet  { g8[ d8 \flam g8] }		\flam d8.[ g16] |

	d16:64[( d8.])		g8.[ \drag d16]		\triplet  { d16[ g d g d8] }		g8.[ g16] |
	\flamd \triplet  { d8 g d }		\flam g8.[ \flam g16]		\triplet  { d16 g d g d8 } g8
}

snareBA = \drummode {
	\partial 8 g8 |
	d4:32(		d8.[) \drag d16]		\triplet { d16[ g d g d8] }		g8.[ g16] |
	\drag d16[ d8.]		\flam d8.[ \flam g16]		\triplet  { d16[ g d g d8] }		\triplet  { g8[ d g] } |

	\flamd \triplet  { d8[ g16 g16 d8] }		g8.[ g16]		\triplet  { d8[ g16 g16 d8] }		g8.[ g16] |
	\flamd \triplet  { d8[ g d] }		\flam g8.[ \flam g16]		\triplet  { d16[ g d g d8] } g8 s8|
}
snareBB = \drummode {
	\partial 8 g8 |
	d4:32(		d8.[) \drag d16]		\triplet  { d16[ g d g d8] }		g8.[ g16] |
	\drag d16[ d8.]		\flam d8.[ \flam g16]		\triplet  { d16[ g d g d8] }		\triplet  { g8[ d g] } |

	\flam d4		\flam g8.[ d16:64](		d8.[) \drag g16]		d8.[ g16] |
	\flamd \triplet  { d8[ g d] }		\flam g8.[ \flam g16]		\triplet  { d16[ g d g d8] } g8 s8|
}