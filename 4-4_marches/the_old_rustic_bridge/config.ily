\version "2.19.0"
%% Globals
global = {
	\time 4/4
	\eighthBeaming
	}

%% Format
part = { \partial 8 s8 }
halfline = { \repeat unfold 2 { s1 | } }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "The Old Rustic Bridge"
meter = "March"


composerSide  = ""
composerTenor = ""
composerBass  = ""
composerPipes = ""