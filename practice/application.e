note
	description: "practice application root class"
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
			p: UNSAFE_PAIR [ANY, ANY]
		do
				--| Add your code here
			print ("Hello Eiffel World!%N")
				--| Unsafe pair
			create p.set (7, "Samurai")
				p.right := "Sniper"
				p.set_right (Void)
				p.set_left (Void)
			print (p.right)
			print ("%N")
			print (p.left)
			print ("%N")
		end

end
