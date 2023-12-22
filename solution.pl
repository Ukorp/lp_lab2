f(A,A,_).
f(I,A,B):-A<B,A1 is A+1,f(I,A1,B).

p(X,1,[X]):-!.

p(X,N,[I|Tail]):-X>0,f(I,1,X),X1 is X-I,N1 is N-1,p(X1,N1,Tail).

member(H,[H|_]).

member(H,[_|Tail]):-member(H,Tail).

dif(A,B):-member(X,A),not(member(X,B)),!.

solve(Lyusya,Klara,Marina,Natasha,Svetlana):-

%Условия Люси:

p(8,4,Lyusya),

Lyusya=[Nadya1,Dina1,Roza1,Sonya1],

Nadya1>4,

%Условия Клары:

p(8,4,Klara),

dif(Lyusya,Klara),

Klara=[Nadya2,Dina2,Roza2,Sonya2],

Sonya2+Roza2=:=Nadya1+Dina1,

%Условия Марины:

p(8,4,Marina),

dif(Lyusya,Marina),

dif(Klara,Marina),

Marina=[Nadya3,Dina3,Roza3,Sonya3],

Dina3>Nadya3,

Dina3>Roza3,

Dina3>Sonya3,

%Условия Наташи:

p(8,4,Natasha),

dif(Lyusya,Natasha),

dif(Klara,Natasha),

dif(Marina,Natasha),

Natasha=[Nadya4,Dina4,Roza4,Sonya4],

Roza4>Nadya4,

Roza4>Dina4,

Roza4>Sonya4,

%Условия Светланы:

p(8,4,Svetlana),

dif(Lyusya,Svetlana),

dif(Klara,Svetlana),

dif(Marina,Svetlana),

dif(Natasha,Svetlana),

Svetlana=[Nadya5,Dina5,Roza5,Sonya5],

%Глобальное 3-е условие Отца

Nadya1+Nadya2+Nadya3+Nadya4+Nadya5=:=10,

Dina1+Dina2+Dina3+Dina4+Dina5=:=10,

Roza1+Roza2+Roza3+Roza4+Roza5=:=10,

Sonya1+Sonya2+Sonya3+Sonya4+Sonya5=:=10.

?-solve(A,B,C,D,E),

write(' Lyusya: '),write(A),
write(' Klara: '),write(B),
write(' Marina: '),write(C),
write(' Natasha: '),write(D),
write(' Svetlana: '),write(E),nl,!.
