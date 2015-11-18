% 6/8 Seaforth Sticks
% Side
\version "2.18.2"
composerSide = ""
snareA = \drummode {
	r8 |
	\flamd d8 g8 d8		\flamg g4 g8 |
	d16 g d g d8->		g8 d8 g8 |

	\flamd d8 g8 d8		\flamg g4 g8 |
	d4.:32(->		d8) g8 g8 |

	\flamd d8 g8 d8		\flamg g4 g8 |
	d16 g d g d8->		g8 d8 g8 |

	d16 g d g d8->		g8 d8 g8 |
	d4.:32(		d4.)
}
%B
snareB = \drummode {
	g8 |
	d4.:32(->		d4.:32)(-> |
	d16) g d g d8->		g8 d8 g8 |

	\flamd d8-^ g8 \flamd d8-^		g8 d8 \flamg g8-^ |
	d8 g8 \flamg g8-^		\flamg g4-^ g8 |

	d4.:32(->		d4.:32)(-> |
	d16) g d g d8->		g8 d8 g8 |

	d16 g d g d8->		g8 d8 g8 |
	d4.:32(		d4.)
}
%C
snareC = \drummode {
	d8:32( |
	d4) \flamd d8		g8 d8 g8-^|
	d16 g d g d8		g8 d8 g8 |

	\flamd d8-^ g8 \flamd d8-^		g8 d8 \flamg g8-^ |
	d8 g8 \flamg g8-^		\flamg g4-^ d8:32( |

	d4) \flamd d8		g8 d8 g8-^|
	d16 g d g d8->		g8 d8 g8 |

	d16 g d g d8->		g8 d8 g8 |
	d4.:32(		d4.)
}
%D
snareD = \drummode {
	g8 |
	d4.:32(->		d8) g8 g8|
	d4.:32(->		d8) g8 g8|

	\flamd d8 g8 d8		\flamg g4 g8-^ |
	d8 g8 \flamg g8-^		\flamg g4 g8 |

	d4.:32(->		d8) g8 g8|
	d16 g d g d8->		g8 d8 g8 |

	d16 g d g d8->		g8 d8 g8 |
	d4.:32(		d4.)
}
%E
snareE = \drummode {
	r8 |
	\flamd d8 g8 d8		\backstick d4 g8 |
	d16 g d g d8->		g8 d8 g8 |

	\flamd d8 g8 d8		\backstick d4 g8 |
	d4.:32(->		d8) g8 g8 |

	\flamd d8 g8 d8		\backstick d4 g8 |
	d16 g d g d8->		g8 d8 g8 |

	\flamd d8 g8 d8		\backstick d4 g8 |
	d4.:32(		d4.)
}
%F
snareF = \drummode {
	g8 |
	d4.:32(->		d4.:32)(-> |
	d16) g d g d8->		g8^"Y" d8 g8 |

	\flamd d8-^ g8 \flamd d8-^		g8^"Y" d8 g8 |
	\flamd d8 g8 d8		\backstick d4 g8 |

	d4.:32(->		d8) g8 g8 |
	d16 g d g d8->		g8 d8 g8 |

	d16 g d g d8->		db4 g8 |
	d4.:32(		d4.)
}
%G
snareG = \drummode {
	d8:32( |
	d4)-^  \backstick d8		g8 d8 g8-^|
	d16 g d g d8		g8 d8 g8 |

	\flamd d8 g8 d8		\backstick d4 g8  |
	\flamd d8 g8 g8		\backstick d4 d8:32( |

	d4)-> \backstick d8		g8 d8 g8|
	d16 g d g d8->		g8 d8 g8 |

	\flamd d8 g d8->		\backstick d4 g8 |
	d4.:32(		d4.)
}
%H
snareH = \drummode {
	g8 |
	\flamd d8 d16 g16 d8		\repeat unfold 3 { \crossstick sn8^"X" }|
	\flamd d8 g8 d8		g8^"Y" d8 g8|

	\flamd d8 g8 d8		\backstick d4 g8 |
	\flamd d8 g8 d8		\backstick d4 g8 |

	\flamd d8 d16 g16 d8		\repeat unfold 3 { sn8^"X" }|
	\flamd d8 g8 d8		g8^"Y" d8 g8|

	\flam d8 g8 d8		\backstick d4 g8 |
	d4.:32(		d4.)
}