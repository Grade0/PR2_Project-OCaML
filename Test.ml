(* creazione di un ambiente vuoto *)
let env0 = emptyenv Unbound;;

(* creazione di un dizionario vuoto *)
let emptyExpr = Dictionary(Empty);;
eval emptyExpr env0;;

(* creazione di un dizionario con valori *)
let mag = Dictionary(Item("mele", Eint(430), Item("banane", Eint(312), Item("arance", Eint(525), Item("pere", Eint(217), Empty)))));;
let dictExpr = Let("Magazzino", mag, Den("Magazzino"));;
eval dictExpr env0;;

(* inserimento *)
let insertExpr = Insert("kiwi", Eint(300), dictExpr);;
eval insertExpr env0;;

(* rimozione *)
let removeExpr = Delete(dictExpr, "pere");;
eval removeExpr env0;;

(* controllo chiave *)
let haskeyExpr = Has_Key("banane", dictExpr);;
eval haskeyExpr env0;;

(* iterazione funzione *)
let iterExpr = Iterate(Fun("x", Sum(Den("x"), Eint(1))), mag);;
eval iterExpr env0;;
let iterExpr = Iterate(Fun("x", Prod(Den("x"), Eint(6))), mag);;
eval iterExpr env0;;
let iterExpr = Iterate(Fun("x", Diff(Den("x"), Eint(2))), mag);;
eval iterExpr env0;;

(* fold *)
let foldExpr = Fold(Fun("x", Sum(Den("x"), Eint(1))), mag);;
eval foldExpr env0;;
let foldExpr = Fold(Fun("x", Prod(Den("x"), Eint(2))), mag);;
eval foldExpr env0;;

(* lista di chiavi *)
let keyList = KeyList(StrItem("mele", StrItem("pere", EndList)));;
eval keyList env0;;

(* filtra in base a lista di chiavi *)
let filterExpr = Filter(keyList, mag);;
eval filterExpr env0;;