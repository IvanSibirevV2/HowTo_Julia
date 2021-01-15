println("////////////////////")
println("////////////////////")
function Writer1()
	println("Writer1")
end
Writer1()
println("////////////////////")
Writer2() = println("Writer2")
Writer2()
println("////////////////////")
Writer3() = (println("Writer3");)
Writer3()
println("////////////////////")
Writer4() = 
begin
	println("Writer4");
end
Writer4()
println("////////////////////")
Writer5=()->println("Writer5")
Writer5()
println("////////////////////")
Writer6=()->(println("Writer6");println("Writer6");)
Writer6()
println("////////////////////")
Writer7=()->
begin
	println("Writer7");
	println("Writer7");
end
Writer7()
println("////////////////////")
Writer8=()->
(
	println("Writer8");
	println("Writer8");
)
Writer8()
readline()
println("////////////////////")
bar() = (x = "Hello, Mars!"; return x)
println(bar())
println("////////////////////")
function cube(x)
	println("cube(",x,")=",x^3)
    return x^3
end
cube(4)
println("////////////////////")
println("А теперь про кортежи возвращаемых значений функции")
function cubeandsquare(x)
	println("a,b = cubeandsquare(",x,")=",x^3,";",x^2,";")
    x^3,x^2
end
a,b = cubeandsquare(3)
println("a = $a, b = $b")
println("////////////////////")
function mysin(t;A=1,q=1,w=0) # поддержка Юникода - можно использовать греческие символы
	println(
		"t=",t
		,";A=",A
		,";q=",q
		,";w=",0
	)    
end
mysin(pi) # синус Пи = 0
mysin(pi*0.5,A = 2) # увеличиваем амплитуду в два раза
mysin(pi*0.5,q = 0.5) # уменьшаем в два раза частоту
println("////////////////////")
#Принцип возвращения с продолжением самого себя...
function Argentum() end
function Argentum()
	println("Argentum")
	Argentum
end
Argentum()()()
println("////////////////////")
println("////////////////////")
# поддержка Юникода - можно использовать греческие символы
# до символа ";" идут обязательные переменные например t
# после символа в кортеже идут необязательные переменные A,q,w
function mysin(t;A=1,q=1,w=0) 
	println(
		"t=",t
		,";A=",A
		,";q=",q
		,";w=",0
	)    
end
mysin(pi)
mysin(pi*0.5,A = 2)
mysin(pi*0.5,q = 0.5)
println("////////////////////")
function func(A,B;C=0,D=0,E=0)
	println(
		"A=",A
		,"; B=",B
		,"; C=",C
		,"; D=",D
		,"; E=",E
	)
end
func(3,4;C=3,D=5,E=6) 
func(3,4;D=5,E=6) 
println("////////////////////")
readline()
println("////////////////////")
println("Принцйп возвращения с продолжением от Юльки")
bar(x) = (
	print(x,";");
	x=x+1;
	return x
)
#символ "|>" применяет к текущему значению
#следующее за ним лямбда выражение
#В документации это называется как
#"Операции, применимые к функциям"
5|>bar|>bar|>bar|>bar|>bar
bar(bar(bar(bar(bar(5)))))
println();
println("////////////////////")
println("////////////////////")
println("Есть две отдельных структуры данных")
println("Массив и диапазон")
println("Осталось разобраться")
f(x...)=x
println("f(1)=",f(1))
println("f(1,2)=",f(1,2))
println("f(1:5)=",f(1:5))
println("f(1:5...)=",f(1:5...))
println("f([1 ,2])=",f([1 ,2]))
println("f([1 ,2]...)=",f([1 ,2]...))
readline()