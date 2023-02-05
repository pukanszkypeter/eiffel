note
	description: "application application root class"
	date: "$Date$"
	revision: "$Revision$"

class
	APPLICATION

inherit
	ARGUMENTS_32

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			-- Some parameters.
			p: PAIR[INTEGER, INTEGER]
			i: INTERVAL[INTEGER]
			l: LEXI_PAIR[INTEGER, INTEGER]
			m: MUTABLE_PAIR[INTEGER, INTEGER]
			mp: MY_PAIR[INTEGER]

		do
			--| Add your code here
			print ("Hello Eiffel World!%N")

			-- PAIR class
			create p.set (1, 1)
			print(p) print("%N")
			-- Immutable
			-- p.set(2, 2)
			-- Attached
			-- create p.set (Void, Void)

			-- INTERVAl class
			create i.set (5, 10)
			create i.union (<<create {INTERVAL[INTEGER]}.set (2,12), create {INTERVAL[INTEGER]}.set (1,11) >>)
			print(i.lower) print("%N")
			print(i.upper) print("%N")

			-- LEXI PAIR class
			create l.set (1, 2)
			-- print(l < create {MY_PAIR[INTEGER]}.set (3, 5)) print("%N")

			-- MUTABLE PAIR class
			create m.set (1, 2)
			m.set_left (2)
			m.set_right (3)
			print(m.left) print("%N")
			print(m.right) print("%N")

			-- MY PAIR class
			create mp.set (1, 2)
			-- Check if not integer value given.
			-- create mp.set (1, "X")
			-- Check mutability.
			mp.set_left (3)
			mp.set_right (4)
			-- Check comperability.
			print(mp.is_less (create {MY_PAIR[INTEGER]}.set (3, 5)))

		end

end
