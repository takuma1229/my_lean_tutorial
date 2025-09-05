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
#check (0, 1)
#check Nat.add

#check Nat.succ 2
#check Nat.add 3 -- 項xに対する関数fの適用は `f x`と表記される。`Nat.add`の型は`Nat → Nat → Nat` (= `Nat → (Nat → Nat)`)。
#check Nat.add 5 2 --つまり、`Nat.add`は、「自然数を受け取り、『自然数を受け取り自然数を受け取る関数』を返す関数」とみなすことができる。
#check (5,9).1
#check (5,9).2

#eval Nat.succ 2
#eval Nat.add 5 2
#eval (5,9).1
#eval (5,9).2
#eval Nat.add (10,7).1 (10,7).2
