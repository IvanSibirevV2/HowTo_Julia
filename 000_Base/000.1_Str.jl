println("###############")
print("Выводим на экран спец символ кавычки \" \n ")
println("И брутальным образом переходим на новую строку")
println("###############")


macro __Test_If(_bool, _Func)
	_Func()
end
macro !__Test_If(_bool, _Func)
	_Func()
end

println("###############")
println("# HelloWorld! #")
println("###############")
println("Example 1")
i = 10
if (i > 15)
	println("i > 15");
else
	println("i <= 15");
end;
println("I am Not in if") 
println("###############")
@__Test_If (println("!!!");)
@__Test_If (println("!!!");)
println("###############")
readline()