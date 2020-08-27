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
arrayCant="[1]"||"[2]"
//Operadores
OpeR = [=|=/=|:=|:<|:>|<=|>=]
OpeA = [+|-|*|/|%]
OpeL = [~]|"||"
Bool=[true|false|0|1]

//palabras reservadas
var = "var"
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
valorInt = {var}{espacio}+{id}{espacio}*(=){espacio}*{numero}+{puntoC}
valorChar = {var}{espacio}+{id}{espacio}*(=){espacio}*{letra}+{puntoC}
valorBool = {var}{espacio}+{id}{espacio}*(=){espacio}*{Bool}+{puntoC}
valorArray = {var}{espacio}+{id}{espacio}*(=){espacio}*(new Array){espacio}*{type}
expresion = {valorInt} || {valorChar} ||{valorBool}

//bloques de decision
bIf = {if}{espacio}*{parentesisA}{espacio}* {id}{OpeR}{id} {espacio}*{parentesisC} {espacio}* {abrirC}{espacio}* {expresion}+{cerrarC}
beIf = {elseif}{espacio}*{parentesisA}{espacio}* {id}{OpeR}{id} {espacio}*{parentesisC} {espacio}* {abrirC}{espacio}* {expresion}{cerrarC}
bE = {else}{espacio}* {abrirC}{espacio}* {expresion} {espacio}*{cerrarC}

//bloques de iteracion
bfor={parentesisA}{espacio}*{id}{espacio}*(in){espacio}*{numero}(..){arrayCant}{numero}

%%
