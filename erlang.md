# erlang-notes

## guide following : [https://learnyousomeerlang.com/starting-out-for-real](learn you some erlang)


* erlang uses =:= instead of == and =/= instead of !=
* less than sign =< instead <= 
* atom is a literal in erlang. a constant .... true and false are atoms instead of being actual data type. 
    
    * they are not garbage collected. which means no usage for dynamic purpose.create a loop with atoms and it will run out of memory.
    * Atoms are constants much like in enums. but much better --> when debugging atoms will not show itself as integers like in C++.
* Defining a variable means it has to start with a Capital letter or _ or @ else it will be considered a atom.
* To define a atom that starts out with capital letter or _ or @... you can use Quotation marks ''
* tuples are present in erlang. much like python tuples can be destructured... or upacked
	
			{X,Y}={23,100}.
			{C,_}={123,333}.

On this second example tuple is being unpacked. 333 will be lost because _ is like /dev/null	

* for tuple desctructuring to work :  the elements on RHS must be equal to RHS. 
* Lists in erlang
	* Can contain any data type. 
	* if list contains integers that are ascii equivalent integers only. it will be shown as list
		
				[67]. 
				c
	* get nth element in the list.
		lists:nth(1,List).
		They don't start from 0.	

	* list append operation ++
	
		[1,2,3] ++ [4,5] ++ [6]

	* list element removal operation --
	    	
		[1,2,3] -- [2,3] -- [1]
		output : [1]
		Reason
		order of associativity : right to left
		
	* cons operator | 
		
		[Head|Tail]
		
		A = lists:seq(1,20).
		[B | F ] = A.
		

		Like in haskell a list can be comprised of just one operator(In haskell :)
		1:2:3:[]
	
		In erlang 
		[1| []]

		[1,2,3,4] --> [1 | [2 | [3 | [4 | []]]]]
		a list inside a list. 

	* List comprehensions
		
		Syntax : [identifier | identifier <- [list], condition...]


		[X || X <- [1,2,3,4,5,6,7,8],x rem 2 =:= 0]
		output [2,4,6,8]

		Example to generate Right angles triangles with hypotenuse less than 100.

		A = lists:seq(1,100).
		
		[ [H,P,Q] || H <- A , P <- A, Q <- A , math:pow(H,2) =:= math:pow(P,2) + math:pow(Q,2) ] 
		
		[ [H,P,Q] || {H,P,Q} <- A, math:pow(H,2) =:= math:pow(P,2) + math:pow(Q,2) ] 

* bit manipulation in erlang. 
	* convert binary to lists
			erlang:binary_to_list()	
			
	* bits are placed inside double &lt(<<) and double &gt(>>)

			Pixel = << 1,2,3,4>>
			each element represents a 8 bit width or byte. 
			can be connected or can be converted into unit size. 

			unpacking can be done here also.
			4 bytes connected to form a intger	
			<<MyInteger:32/intger>> = Pixel

	* Bitwise operators are present 
		
		bsl -> shift left
		bsr -> shift right


## ---- Modules ----


	
		















