%%

%unicode
%class proyecto
%int
%line
%column
%standalone

%{
    String str = "";
%}

//Caracteres especiales
numero = [0-9]
letra = [a-zA-Z]|"_"

espacio = [ \n\r\t]+
puntoC = [;]
parentesisA = [(]
parentesisC = [)]
abrirC = [<]
cerrarC = [>]
type=[int|char|bool]
arrayCant= ["1"]|["2"]
//Operadores
OpeR = [=|=/=|:=|:<|:>|<=|>=]
OpeA = [+|-|*|/|%]
OpeL = [~]|"||"
Bool=true|false
charEsp= "^"|@|"$"|#|&|"'"|"?"|"!"|{abrirC}|{cerrarC}|"{"|"}"

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
valorChar = '({letra}|{numero}|{charEsp}|" ")'
valorStr='({letra}|{numero}|{charEsp}|" ")+'
/*valorInt = {var}{espacio}+{id}{espacio}*(=){espacio}*{numero}+{puntoC}
valorChar = {var}{espacio}+{id}{espacio}*(=){espacio}*{letra}+{puntoC}
valorBool = {var}{espacio}+{id}{espacio}*(=){espacio}*{Bool}+{puntoC}
valorArray = {var}{espacio}+{id}{espacio}*(=){espacio}*(newArray){arrayCant}{espacio}*{type}
expresion = {valorInt}|{valorChar}|{valorBool}

//bloques de decision
bIf = {if}{espacio}*{parentesisA}{espacio}*{id}{OpeR}{id}{espacio}*{parentesisC}{espacio}*{abrirC}{espacio}*{expresion}+{cerrarC}
beIf = {elseif}{espacio}*{parentesisA}{espacio}*{id}{OpeR}{id}{espacio}*{parentesisC}{espacio}*{abrirC}{espacio}*{expresion}{cerrarC}
bE = {else}{espacio}*{abrirC}{espacio}*{expresion}{espacio}*{cerrarC}
*/

%%
<YYINITIAL>{
    {id}  {System.out.println("");}
}