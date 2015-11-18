\version "2.19.0"
%% Globals
global = {
	\time 3/4
	}

%% Format
part = { \partial 4 s4 }
halfline = { \repeat unfold 2 { s4*3 | } }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Amazing Grace"
meter = "Hymn"