note
	description: "Summary description for {UNSAFE_PAIR}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	UNSAFE_PAIR[L, R]
create set
feature
	left: detachable L assign set_left
	right: detachable R assign set_right

	set( left_item: detachable L; right_item: detachable R )
		require
			left_item /= Void or right_item /= Void
		do
			left := left_item
			right := right_item
		ensure
			left = left_item and right = right_item
		end

	set_left( left_item: detachable L )
		do
			left := left_item
		ensure
			left = left_item
		end

	set_right( right_item: detachable R )
		do
			right := right_item
		ensure
			right = right_item
		end
invariant
	left /= Void or right /= Void
end
