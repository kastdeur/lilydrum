\version "2.19.0"
%% Globals
global = {
	\time 3/4
	\eighthBeaming
	}

%% Format
part = { \partial 8 s8 }
halfline = { \repeat unfold 2 { s2. | } }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Castle Dangerous"
meter = "March"

composerSide  = ""
composerTenor = ""
composerBass  = ""
composerPipes = ""