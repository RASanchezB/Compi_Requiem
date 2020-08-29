%%

%unicode
%class proyecto
%int
%line
%column
%standalone

%{
    String str = "";
    static int errores=0;
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
new = "new"
Array = "Array"
//comandos
scan = "catch"
print = "throw"
println = "throwDown"

//variables
id = {letra}+({numero}*|{charEsp}*)*
valorChar = '({letra}|{numero}|{charEsp}|" ")'
valorStr='({letra}|{numero}|{charEsp}|" ")+'

commentarios="#/"

%%
<YYINITIAL>{
    {id}        {System.out.println("id ");}
    {valorChar}  {System.out.println("valorChar");}
    {valorStr}  {System.out.println("valorStr ");}
    {var}       {System.out.println("var");}
    {for}       {System.out.println("for");}
    {while}     {System.out.println("while");}
    {if}        {System.out.println("if");}
    {elseif}    {System.out.println("elseif");}
    {else}      {System.out.println("else");}
    {switch}    {System.out.println("switch");}
    {end}       {System.out.println("end");}
    {scan}      {System.out.println("scan");}
    {print}     {System.out.println("print");}
    {println}   {System.out.println("println");}
    {OpeR}      {System.out.println("OpeRelacional");}
    {OpeA}      {System.out.println("OpeAritmetico");}
    {OpeL}      {System.out.println("OpeLogicoa");}
    {Bool}      {System.out.println("Boolean");}
    {charEsp}   {System.out.println("caracteres especiales");}
    {puntoC}    {System.out.println("punto y coma");}
    {parentesisA}  {System.out.println("parentesis (");}
    {parentesisC}  {System.out.println("parentesis )");}
    {abrirC}    {System.out.println("parentesis <");}
    {cerrarC}   {System.out.println("parentesis >");}
    {type}      {System.out.println("tipo: "+yytext());}
    {arrayCant} {System.out.println("cantitdad del arreglo: "+yytext());}
    {new}       {System.out.println("new" );}
    {Array}     {System.out.println("=arreglo ");}
    {espacio}   {}
    .           {System.out.println("Falla en lexico, char o variable no aceptada: " +yytext()+" Linea: "+(yyline + 1)+ ", Columna: "+(yycolumn+1));
							errores++;}
}