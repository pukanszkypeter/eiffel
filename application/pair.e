note
	description: "Summary description for {PAIR}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	PAIR [ LEFT, RIGHT ]

inherit ANY redefine is_equal, copy end

create
	set

feature -- Public interfaces
	left: attached LEFT assign set_left
	right: attached RIGHT assign set_right

feature {NONE} -- Private interfaces

	set( left_item: attached LEFT; right_item: attached RIGHT )
			-- Initialization for `Current'.
		do
			left := left_item
			right := right_item
		ensure
			left = left_item and right = right_item
		end

	set_left( left_item: attached LEFT )
			-- Setter for left component.
		do
			left := left_item
		ensure
			left = left_item
		end

	set_right( right_item: attached RIGHT )
			-- Setter for right component.
		do
			right := right_item
		ensure
			right = right_item
		end

	is_equal( other: like Current ): BOOLEAN
		-- Override default shallow equal to deep.
		do
			Result := Current.is_deep_equal(other)
		ensure then
			deep_equal(Current, other)
		end

	copy( other: like Current )
		-- Override default shallow copy to deep.
		do
			Current.deep_copy(other)
		ensure then
			deep_equal(Current, other)
		end
end
