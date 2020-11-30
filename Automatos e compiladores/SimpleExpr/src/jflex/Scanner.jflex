// Arquivo para o scanner a ser utilizado
package parser;
// Importar classes do cup - classe Symbol
import java_cup.runtime.*;




%%

%class Scanner
%cup
%unicode
%line
%column
//%debug

%{
    // type é a classe do token
    // yyline e yycolumn são variáveis reservadas
    // do JFlex para armazenar a linha e a coluna
    // de um token encontrado na entrada (precisa
    //  usar %line e %column)
    private Symbol symbol(int type) {
        return new Symbol(type, yyline, yycolumn);
    }
    private Symbol symbol(int type, Object value) {
        return new Symbol(type, yyline, yycolumn, value);
    }
%}

ws = [\ \t\f\r\n]
number = [0-9]+(\.[0-9]+)?(\.[0-9]+[eE][+-]?[0-9]+)?
id = [A-Za-z][A-Za-z0-9_]*

%%

";"         { return symbol(sym.SEMI); }
"+"         { return symbol(sym.PLUS); }
"-"         { return symbol(sym.MINUS); }
"*"         { return symbol(sym.TIMES); }
"**"        { return symbol(sym.EXPON); }
"/"         { return symbol(sym.DIVIDE); }
"%"         { return symbol(sym.MOD); }
"("         { return symbol(sym.LPAREN); }
")"         { return symbol(sym.RPAREN); }
{number}    { return symbol(sym.NUMBER,
                            new Double(yytext())); }
{id}        { return symbol(sym.ID,
                                          new String(yytext())); }
{ws}        {/* Ignore */}
.           { return symbol(sym.ERROR, yytext()); }


