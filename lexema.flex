%%

%unicode
%class poyecto
%int
%line
%column
%standalone

%{
    String str = "";
%}

//Caracteres especiales
numero = [0-9]
letra = [a-zA-Z]
charEsp= [-_]
espacio = [ \n\r\t]+
puntoC = [;]
parentesisA = [(]
parentesisC = [)]
abrirC = [<]
cerrarC = [>]
type=[int|char|bool]
//Operadores
OpeR = [=|=/=|:=|:<|:>|<=|>=]
OpeA = [+|-|*|/|%|^]
OpeL = [~|"||"]
Bool=[{true}|{false}|0|1]

expresion = 

//palabras reservadas
var = "var"
true = "true"
false = "false"
for = "for"
while = "while"
if = "if"
elseif = "eif"
else = "e"
switch = "block"
end = "end"

//comandos
scan = "catch"
print = "throw"
println = "throwDown"

//variables
id = {letra}+({numero}*|{charEsp}*)*
valorInt = {var}{espacio}+{id}{espacio}*[=]{espacio}*{numero}+{puntoC}
valorInt = {var}{espacio}+{id}{espacio}*[=]{espacio}*{letra}+{puntoC}
valorInt = {var}{espacio}+{id}{espacio}*[=]{espacio}*{Bool}+{puntoC}
valorArray = {var}{espacio}+{id}{espacio}*[=]{espacio}*[new Array]{espacio}*([1]|[2])[{type}]

//bloques de decision
bIf = {if}{espacio}*{parentesisA}{espacio}* {id}{OpeR}{id} {espacio}*{parentesisC} {espacio}* {abrirC}{espacio}* {expresion}{cerrarC}
bE = {else}{espacio}* {abrirC}{espacio}* {expresion}{cerrarC}
bIf = {elseif}{espacio}*{parentesisA}{espacio}* {id}{OpeR}{id} {espacio}*{parentesisC} {espacio}* {abrirC}{espacio}* {expresion}{cerrarC}

//bloques de iteracion
bfor={parentesisA}{espacio}*{id}{espacio}*[in]{espacio}*{numero}[..]{numero}

<<<<<<< HEAD
%%
=======
%%
>>>>>>> dcb590dfbb4d87cb3c464f244580b106fabf2599
