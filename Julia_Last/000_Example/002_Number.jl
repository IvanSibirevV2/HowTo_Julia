println("////////////////////")
#Как создать переменную определенного типа
q=Core.Number(0)
#Как узнать тип переменной
w(x)=(println(".",typeof(x),"=",x);x;)
w|>w
Core.Number(0)|>w
Core.Real(8)|>w

#Получение супер типа типа или родительского класса
println(supertype(Int32))
#...
println("////////////////////")
println("#Жесткое приведение к желаемому типу, иначе ошибка")
#qwe(q::Core.Int64)=q|>w
4|>(x::Core.Int64)->x|>w
println("////////////////////")
'Q'|>(x::Core.Char)->x|>w
println("#Какой функцией схлопотать длинну строки")
"QWE"|>(x::Core.String)->x|>w|>length|>w
println("////////////////////"|>length)
println("Как узнать размер строку")
3|>sizeof|>w;
println("////////////////////")
"Как объединить строки"|>w
"Hello " * "world"|>w
string("Hello ","world")|>w
"Как повторитьстроки"|>w
"Hello "^3|>w
repeat("ha", 3)|>w
#println(q)
println("/"^30)
"Преобразование числа в строку"|>w
4|>(x::Core.Int64)->x|>w|>repr|>(x::Core.String)->x|>w
"Выдрать подстроку"|>w
SubString("Hello world"|>w, 1, 5)|>w
println("////////////////////")
readline()