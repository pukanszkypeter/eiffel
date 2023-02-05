note
	description: "Summary description for {LEXI_PAIR}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	LEXI_PAIR [ LEFT -> COMPARABLE, RIGHT -> COMPARABLE ]

inherit
	PAIR [ LEFT, RIGHT ]
	select is_equal, copy end
	COMPARABLE
	rename is_equal as is_equal_comparable, copy as copy_comparable end

create
	set

feature

	is_less alias "<" (other: like Current): BOOLEAN
		do
			Result := left < other.left or (left = other.left and right < other.right)
		end

end
