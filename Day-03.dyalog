⍝ Problem A
trees ← {+/'#'=⍺[h|⍵∘×¨⍳h]}
input trees 1 3

⍝ Problem B
trees ← {+/'#'=⍺[h|⍵∘×¨⍳⌊h÷⊃⍵]}
×/{input trees ⍵}¨↓5 2⍴1 1 1 3 1 5 1 7 2 1
