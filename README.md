# CERIcompiler

Un compilateur simple qui traduit un langage impératif de type Pascal (LL(k)) en assembleur 64 bits (x86_64, syntaxe AT&T).  
Projet réalisé par **Amel SEKOUANE** dans le cadre d’un TP universitaire, basé sur le compilateur fourni par Pierre Jourlin.

## Fonctionnalités

- **Analyse lexicale et syntaxique** via Flex
- **Génération de code assembleur** x86_64 (64 bits)
- Prise en charge de structures de contrôle : `IF`, `WHILE`, `FOR`, `CASE`, etc.
- Gestion des types : `INTEGER`, `DOUBLE`, `CHAR`, `BOOLEAN`
- Implémentation d'une fonction prédéfinie `CARRE` (calcul de carré)
- Affichage conditionnel (`DISPLAY`)
- Support de blocs `BEGIN ... END`, instructions imbriquées
- Support partiel de grammaire LL(k)

## Structure de grammaire (supportée)

Program := [DeclarationPart] StatementPart
DeclarationPart := "VAR" VarDeclaration {";" VarDeclaration} "."
StatementPart := Statement {";" Statement} "."

Statement := AssignementStatement | DisplayStatement | IfStatement | WhileStatement | ForStatement | BlockStatement | CaseStatement | Carre

AssignementStatement := Identifier ":=" Expression

Expression := SimpleExpression [RelationalOperator SimpleExpression]
SimpleExpression := Term {AdditiveOperator Term}
Term := Factor {MultiplicativeOperator Factor}
Factor := Number | Letter | "(" Expression ")" | "!" Factor

AdditiveOperator := "+" | "-" | "||"
MultiplicativeOperator := "*" | "/" | "%" | "&&"
RelationalOperator := "==" | "!=" | "<" | ">" | "<=" | ">="
Digit := "0".."9"
Letter := "a".."z"


##  Compilation & exécution

### Cloner le dépôt :
    git clone git@framagit.org:jourlin/cericompiler.git

### Compiler le projet :
    make compilateur

### Compiler un fichier source `.p` :
    cat test.p | ./compilateur > test.s

### Exécuter le code assembleur généré :
    gcc -ggdb -no-pie -fno-pie test.s -o test
    ./test

### Debug : 
    ddd ./test

## Contenu du dépôt

* `compilateur.cpp` – moteur principal
* `tokeniser.*` – analyseur lexical
* `test.p` – exemple de programme source
* `test.s` – code assembleur généré
* `makefile` – automatisation de la compilation
* `README.md` – ce fichier
* `LICENSE` – GNU GPL v3


## Objectifs pédagogiques

Ce projet permet de se familiariser avec :

* La conception de compilateurs
* Le traitement de langages formels (LL(k))
* La gestion de types, registres, et pile mémoire
* La génération de code x86_64
* L’environnement Linux (compilation, scripts, Makefile)

## Licence

Distribué sous licence **GNU GPL v3**.
Inspiré et adapté à partir du compilateur fourni par **Pierre Jourlin** (CERI - Avignon Université).
