note
	description: "Summary description for {INTERVAL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	INTERVAL [SAME -> COMPARABLE]

inherit
	PAIR [SAME, SAME]
		rename
			left as lower,
			right as upper
		select
			is_equal,
			copy
		end
	PART_COMPARABLE
		rename
			is_equal as is_equal_part_comparable,
			copy as copy_part_comparable
		end
create
	set,
	union

feature {NONE} -- Private interfaces. Initialization.

	union (interval_array: attached ARRAY [INTERVAL [SAME]])
		-- Sets the interval based on the given interval array max and min values.
		require
			interval_array.count > 0
		local
			min: SAME
			max: SAME
			i: INTEGER_32
		do

			from
				i := interval_array.lower
				min := interval_array.item (i).lower
				max := interval_array.item (i).upper
			-- invariant :-( run out of time )
			-- variant :-( run out of time )
			until
				i > interval_array.upper
			loop
				if interval_array.item (i).upper > max then
					max := interval_array.item (i).upper
				end
				if interval_array.item (i).lower < min then
					min := interval_array.item (i).lower
				end
				i := i + 1
			end

			set (min, max)
		end

feature -- Public interfaces.

	contains alias "@" (item: SAME): BOOLEAN
		-- Returns if given value is inside the intervall.
		do
			Result := lower <= item and item <= upper
		end

	is_less alias "<" (other: like Current): BOOLEAN
		do
			Result := other.lower < lower and upper < other.upper
		end

invariant
	lower_is_not_greater_then_upper: lower <= upper

end
