package Parse;


%%


%type java_cup.runtime.Symbol

%{
    private java_cup.runtime.Symbol tok(int kind, Object value) {
        return new java_cup.runtime.Symbol(kind, yychar, yychar+yylength(), value);
    }
%}

%eofval{
    {
        return tok(sym.EOF, null);
    }
%eofval}


%%


" " {}

\n {newline();}

"," {return tok(sym.VIRG, null);}