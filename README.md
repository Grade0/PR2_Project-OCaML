# PR2_Project-OCaML
"Programming 2" Class 2nd Project - University of Pisa

## English Version (per l'italiano guardare sotto)
#### PROGRAMMING II – A.Y. 2019-20 | Second Project
<br>  

**Target:** The project aims to apply to specific cases the concepts and programming techniques examined during the second part of the course, and consists in the design and implementation of some software modules.  

**Description:** Design and development of an interpreter in Ocaml


Consider an extension of the functional teaching language presented in class that allows you to manipulate dictionaries. A dictionary is a collection of values uniquely identified by a key. Therefore, a dictionary is a collection of key-value pairs where the key is unique.

<br>

A concrete example of a dictionary is given below:

    Warehouse = {'apples': 430, 'bananas': 312, 'oranges': 525, 'pears': 217}
    
Dictionaries are characterized by several primitive operations.

The **insert** operation inserts a key-value pair into a dictionary. For example: the operation **insert(`kiwi', 300, Warehouse)** produces as result the dictionary:

    {'apples': 430, 'bananas': 312, 'oranges': 525, 'pears': 217, kiwi: 300}
    
The **delete** operation removes a key-value pair from a dictionary. For example: the operation **delete Warehouse('pears')** results in the dictionary:

    {'bananas': 312, 'oranges': 525, 'apples': 430}

The **has_key** operation controls the existence of the key in a dictionary. For example **has_key(bananas, Warehouse)** returns the boolean value true.

The operation **Iterate(f,d)** applies the function f to all key-value pairs in the dictionary, returning a new dictionary with the values obtained as a result of the function.
For example, the operation **iterate(((fun val -> val +1), Warehouse)** results in the dictionary:

    {'apples': 431, 'bananas': 313, 'oranges': 526, 'pears': 218}
    
The operation **fold(f d)** calculates the value obtained by applying the function f sequentially to all elements of the dictionary. At step i-th the calculated value f_i is obtained as the sum of the value of the function f applied to the value v_i-1 in the dictionary and the value f_i-1.
For example, the operation **fold(((fun val -> val +1), Warehouse)** results in the value 1488.

The operation **filter(key list, d)** returns as a result the dictionary obtained from the dictionary d eliminates all the key-value pairs for which the key does not belong to the list of keys passed as a parameter.
For example, the application of **filter([`apples'; `pears'] d)** results in the dictionary:

    {'apples': 430, 'pears': 217}
    
<br>

1. Define operational rules for dictionary management

2. Extend the Ocaml functional language interpreter by assuming the static scoping rule.

3. Optional : define the dynamic type checker of the resulting language.

4. Verify the correctness of the interpreter by designing and executing a number of test cases 125 sufficient to test all additional operators.

<hr><br>

## Versione Italiana
#### PROGRAMMAZIONE II – A.A. 2019-20 | Secondo Progetto
<br>  

**Obiettivo:** Il progetto ha l’obiettivo di applicare a casi specifici i concetti e le tecniche di programmazione esaminate
durante la seconda parte del corso, e consiste nella progettazione e realizzazione di alcuni moduli software.  

**Descrizione:** Progettazione e sviluppo di un interprete in OCaml


Si consideri un’estensione del linguaggio didattico funzionale presentato a lezione che permetta di
manipolare dizionari. Un dizionario è una collezione di valori identificati univocamente da una chiave.
Pertanto, un dizionario è una collezione di coppie chiave-valore dove la chiave è unica.

<br>  
Un esempio concreto di dizionario è riportato di seguito:  

    Magazzino = {'mele': 430, 'banane': 312, 'arance': 525, 'pere': 217}
    
I dizionari sono caratterizzati da diverse operazioni primitive.

L’operazione **insert** inserisce una coppia chiave-valore in un dizionario. Per
esempio l’operazione **insert(`kiwi’, 300, Magazzino)** produce come risultato il
dizionario:

    {'mele': 430, 'banane': 312, 'arance': 525, 'pere': 217, kiwi: 300}
    
L’operazione **delete** rimuove una coppia chiave-valore da un dizionario. Per
esempio: l’operazione **delete Magazzino('pere')** produce come risultato il
dizionario:

    {'banane': 312, 'arance': 525, 'mele': 430}
    
L’operazione **has_key** controlla l’esistenza della chiave in un dizionario. Per
esempio l’operazione **has_key(banane, Magazzino)** restituisce il valore booleano
true.

L’operazione **Iterate(f,d)** applica la funzione f a tutte le coppie chiave-valore
presenti nel dizionario, restituendo un nuovo dizionario con i valori ottenuti
come risultato della funzione.
Per esempio l’operazione **iterate((fun val -> val +1), Magazzino)** produce come
risultato il dizionario:

    {'mele': 431, 'banane': 313, 'arance': 526, 'pere': 218}
    
L’operazione **fold(f d)** calcola il valore ottenuto applicando la funzione f
sequenzialmente a tutti gli elementi del dizionario. Al passo i-esimo il valore
calcolato f_i e’ ottenuto come somma del valore della funzione f applicata al
valore v_i-1 nel dizionario e del valore f_i-1.
Ad esempio l’operazione **fold((fun val -> val +1), Magazzino)** produce come
risultato il valore 1488.

L’operazione **filter(key list, d)** restituisce come risultato il dizionario
ottenuto dal dizionario d eliminado tutte le coppie chiave-valore per cui la
chiave non appartiene alla lista delle chiavi passata come parametro. Ad esempio
l’applicazione di **filter([`mele’; `pere’] d)** produce come risultato il
dizionario:

    {'mele': 430, 'pere': 217}
    
<br>  

1. Definire le regole operazionali per la gestione del dizionario.

2. Estendere l’interprete OCaml del linguaggio funzionale assumendo la regola di scoping statico.

3. Opzionale : definire il type checker dinamico del linguaggio risultante.

4. Si verifichi la correttezza dell’interprete progettando ed eseguendo una quantità di casi di test
sufficiente a testare tutti gli operatori aggiuntivi.
