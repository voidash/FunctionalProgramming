# erlang-notes

## guide following : [https://learnyousomeerlang.com/starting-out-for-real](learn you some erlang)


* comments in erlang starts with % character
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
* tokens in erlang : ~n \n , ~s \s (for strings) --> for io:format()
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

Modules are the classes of erlangs.

modules:function(Args)

* When saving modules to file. The filename must match the module name.

* at the top of the file there should be module definition.
	
	-module(ModuleName).
	The ModuleName is the atom that will be used to call the function defined inside it.
	
	-export([function/arity,function2/arity,function3/arity...]).
arity is integer that defines the number of arguments that the function can accept.
The functions that are present inside the list will only be accessible.

	compile flag : -export-all will help to export all the modules. 
	


example of module in action

				
				-module(useless).
				-author("Ashish Thapa").
				-define(sub(X,Y),X-Y).
				-export([add/2,hello/0,greet_and_add_two/1,sub/2]).

				add(A,B) -> A + B.

				hello() -> io:format("This is Hello " ).

				greet_and_add_two(X) -> hello() , add(X,2).


## if else in erlang vs other langauges
		
				function(Args)
				if X then
					Expression
				else if Y then
					Expression
				else
					Expression

	
				function(X) ->
					Expression;
				function(Y) ->
					Expression;
				function(_) ->
					Expression.

# guards in erlang
	
* important part of functions..
* makes pattern matching more expressive
* pre bound check for the arguments being passed much more like if else

			is_valid_driver(X) when X >= 16 , x =< 100 -> true;
			is_valid_driver(_) -> false.

* the (,) comma acts like  ```and``` and (;) semicolon acts like ```or ```
	
	## Difference between comma```,``` and  ```andalso```

		```andalso``` catches error as it happens and won't let the next expression to be evaluated. ```,``` doesn't care about error and even if error takes place it continues to evaluate.  
		
		same case for ```;``` and ```orelse```

		they are not drop in replacements. 

	
* remember conda { comma and and} mnemonic device














