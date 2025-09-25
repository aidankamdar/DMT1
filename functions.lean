--Aidan Kamdar, Thu, sep 18, 2025
--Functions

def myAdd : Nat → Nat → Nat :=
  fun(n1 n2 : Nat) => n1 + n2

  #eval myAdd 3 4

def myAdd'' (n1 n2 : Nat): Nat :=
n1 +n2

def myAdd' :  Nat → Nat → Nat --don't put colon equals, put cases
| n1,n2 => n1 + n2

def myAdd''' : (n1 : Nat) → (n2 : Nat) → Nat :=
  fun n1 n2 => n1 + n2

def notMyAdd : Nat → Nat → Nat :=
  fun n1 n2 => n1 + n2


--Application off
#eval myAdd 1 2
#eval myAdd' 1 2
#eval myAdd'' 1 2
#eval myAdd'' 1 2


def add1 : Nat → Nat := myAdd 1
#check add1
#eval add1 2
#eval add1 5

def add10 : Nat → Nat := myAdd 10
#eval add10 5
#eval add10 10

def ifThenElse : Bool → Bool → Bool → Bool
| b1, b2, b3 => if b1 then b2 else b3
#eval ifThenElse true false true

#check ifThenElse
#check ifThenElse true
#check ifThenElse false false
#check ifThenElse false false true

def newAdd := fun n1 n2 => (n1 + n2 : Nat)

def weird (T : Type)(_a:T) : Bool := true

#eval weird Nat 3
#eval weird String "I am a string"
#eval weird Bool false

def strange( T: Type)(_a:T): Bool := true
#eval strange Nat 3
#eval strange String "Hi there"
#eval strange Bool false


#check Bool


def myNeg (b:Bool) : Bool :=
match b with
| true => false
| false => true
#eval myNeg true
#check Or

