note
	description: "Summary description for {MUTABLE_PAIR}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	MUTABLE_PAIR [ LEFT, RIGHT ]

inherit
	PAIR [ LEFT, RIGHT ]
		export {ANY} set_left, set_right end

create
	set

end
