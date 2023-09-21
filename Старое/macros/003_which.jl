println("######################")
##Замыкание лямбда выражения
WriteLn=(x)->(x)
WriteLn=(x)->(println(x);return WriteLn;)
#bar=(x)->(println(x);)
_str = "Как дела?"
WriteLn("Привет")("Мир")(_str);
println("######################")
WriteLn_Lock=()->(WriteLn("Привет")("Мир")(_str));
_str = "Как дела??"
WriteLn_Lock();
_str = "Как дела???"
WriteLn_Lock();
println("######################")
#По идее макрос должен что-то делать,
#Но этой версии он не определен.