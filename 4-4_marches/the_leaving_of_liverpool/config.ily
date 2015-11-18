\version "2.19.0"
%% Globals
global = {
	\time 4/4
	\eighthBeaming
	}

%% Format
part = { \partial 4 s4 }
halfline = { \repeat unfold 2 { s1 | } }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "The Leaving of Liverpool"
meter = "March"