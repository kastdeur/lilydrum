% ================================================= %
%     Internal Functions                            %
%     as used by other files in this library        %
% ================================================= %
% Part of lilydrum

#(define ( _get-first-note mus)
	"Get the first note-event in @var{music}"
	(let ((note (car (extract-typed-music mus 'note-event))))
	  note
	  )
)

#(define (_allbutlastnote mus)
	"Reverse the elements, Pop of (cdr) the first element, Reverse again, put it in a SequentialMusic"
	(let ((elts (ly:music-property mus 'elements)))
		(make-music 'SequentialMusic 'elements (reverse (cdr (reverse elts))))
	)
)

#(define (_lastnote mus)
	"Get the last element, make it a list, put it in a SequentialMusic"
	(let ((elts (ly:music-property mus 'elements)))
		(make-music 'SequentialMusic 'elements (list (last elts)))
	)
)

