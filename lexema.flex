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

espacio  = [ \n\r\t]+
comma = ","
punto="."
puntoC = ";"
parentesisA = "("
parentesisC = ")"
abrirC = "<"
cerrarC = ">"
bracketA = "["
bracketC = "]"
//arrayCant= ["1"]|["2"]

//Operadores
assignment = "="
equals = ":="
not = "=/="
and = "~"
or="||"
OpeR = {not}|{equals}|":<"|":>"|"<="|">=" |{and}|{or}
OpeA_sum = "+"|-
OpeA_mult = "*"|"/"
OpeA_mod = "%"


letter_special= "^"|@|"$"|#|&|"'"|"?"|"!"|{abrirC}|{cerrarC}|"{"|"}"

//inicio
start="start"

//palabras reservadas
num = {numero}+
letter = "letter"
word="word"
bool="bool"

//ciclos
for = "for"
while = "while"
if = "if"
elseif = "eif"
else = "e"
//blocks
block = "block"
end = "end"
//new = "new"

//arreglo
array = "array"


//escritura
catch = "catch"
throw = "throw"
throwDown = "throwDown"

//funcion
func="func"

//identificador
id = {letra}+({numero}*|{letter_special}*)*


valorChar = '({letra}|{numero}|{letter_special}|" ")'
valorStr='({letra}|{numero}|{letter_special}|" ")+'

commentarios="#/"

%%
<YYINITIAL>{
    {id}        {System.out.println("id ");}
    {start}     {System.out.println("start");}
    {valorChar}  {System.out.println("valorChar");}
    {func}       {System.out.println("func");}
    {valorStr}  {System.out.println("valorStr ");}

    //types
    {num}       {System.out.println("num");}
    {letter}       {System.out.println("letter");}
    {word}       {System.out.println("word");}
    {bool}       {System.out.println("bool");}

    //ciclos
    {for}       {System.out.println("for");}
    {while}     {System.out.println("while");}

    //decision
    {if}        {System.out.println("if");}
    {elseif}    {System.out.println("elseif");}
    {else}      {System.out.println("else");}

    //block
    {block}    {System.out.println("block");}
    {end}       {System.out.println("end");}

    //impresiones
    {catch}      {System.out.println("catch");}
    {throw}     {System.out.println("throw");}
    {throwDown}   {System.out.println("println");}

    //operador relaciona
    {OpeR}      {System.out.println("OpeRelacional");}

    //operador aritmeticos
    {OpeA_sum}      {System.out.println("OpeAritmetico_suma");}
    {OpeA_mult}      {System.out.println("OpeAritmetico_mult");}
    {OpeA_mod}      {System.out.println("OpeAritmetico_mod");}

    //operador logico
    {and}      {System.out.println("and");}
    {or}      {System.out.println("or");}
    {assignment} {System.out.println("assignment");}
    {equals} {System.out.println("equals");}
    {not} {System.out.println("not");}
    
    //letrasfinales
    
    {letter_special}   {System.out.println("letter_special");}
    {puntoC}    {System.out.println("punto y coma");}
    {parentesisA}  {System.out.println("parentesis (");}
    {parentesisC}  {System.out.println("parentesis )");}
    {abrirC}    {System.out.println("parentesis <");}
    {cerrarC}   {System.out.println("parentesis >");}
    {comma}    {System.out.println("coma");}
    {bracketA} {System.out.println("bracket abierto");}
    {bracketC} {System.out.println("bracket cerrado");}
    {punto} {System.out.println("punto");}
    //{new}       {System.out.println("new" );}
    {array}     {System.out.println("=arreglo ");}
    {espacio}   {}
    .           {System.out.println("Falla en lexico, char o variable no aceptada: " +yytext()+" Linea: "+(yyline + 1)+ ", Columna: "+(yycolumn+1));
							errores++;}
}