def m : Nat := 1
def b1 : Bool := true
def b2 : Bool := false

#check m
#check b1 && b2
#check b1 || b2

#eval 5 * 4
#eval m + 2
#eval b1 && b2

-- どっちでもいい
#check Nat →  Nat -- \to と打つと入力できる (Unicode)
#check Nat -> Nat -- ASCII

#check Nat × Nat -- "\times"と打つと入力できる
#check Prod Nat Nat

#check Nat → (Nat → Nat) -- →は右結合なので、これはNat → Nat → Natと同じ。
#check (Nat → Nat) → Nat

#check Nat.succ
#check (0, 1) -- (m, n)は`Nat × Nat`型をもつmとnの順序対。
#check Nat.add

#check Nat.succ 2
#check Nat.add 3 -- 項xに対する関数fの適用は `f x`と表記される。`Nat.add`の型は`Nat → Nat → Nat` (= `Nat → (Nat → Nat)`)。--つまり、`Nat.add`は、「自然数を受け取り、『自然数を受け取り自然数を受け取る関数』を返す関数」とみなすことができる。よって、`Nat.add 3`は`Nat → Nat`、即ち2番目の引数`n`を待つ関数を返す。
#check Nat.add 5 2
#check (5,9).1
#check (5,9).2

#eval Nat.succ 2
#eval Nat.add 5 2
#eval (5,9).1
#eval (5,9).2
#eval Nat.add (10,7).1 (10,7).2

-- NatやBoolなどの各型も型をもつ。
-- 以下の各式はType型の項である。
#check Nat -- Type
#check Bool
#check Nat → Bool
#check Nat → Nat → Nat
#check Nat × Nat → Nat

def α : Type := Nat -- 型を表す新しい定数を宣言することもできる。
def β : Type := Bool
def F : Type -> Type := List
def G : Type -> Type -> Type := Prod
#check α
#check F α
#check F Nat
#check G α
#check G α β

#check α × β -- Type。直積×はType → Type → Type型を持つ関数である。
#check Nat × Nat

def α : Type := Nat
#check List α -- 任意の型αが与えられたとき、List αはα型の項からなるListの型を返す。
#check List Nat

#check Type -- Q. Typeそのものはどのような型をもっているのか？ A. Type 1型

#check Type 1 -- Type 1はType 2型を持つ。
#check Type 2 -- Type 2はType 3型を持つ。

-- Type 0はNatのような普通の型からなる宇宙。また、TypeとはType 0の略称である。
-- Type 1はType 0を項に持つ、より大きい宇宙。
-- Type 2はType 1を項にもつ、より大きい宇宙。
-- 以下無限に続く。任意の自然数nに対して型Type nが存在する。

#check List -- List.{u} (α : Type u) : Type u。uは宇宙レベルを表す。αがType nをもつなら、List αもType nを持つ。
#check Prod -- 関数Prodも多相 (polymorphic)である。

universe u -- universeコマンドで明示的に宇宙変数を宣言できる。
def F2 (α : Type u) : Type u := Prod α α -- Type uに属する型αを受け取ると、αとαの直積型を返す関数
#check F2

def F3.{u2} (α : Type u2) : Type u2 := Prod α α -- {}を用いて宇宙パラメータを指定すると、universeコマンドの使用を回避できる
#check F3
