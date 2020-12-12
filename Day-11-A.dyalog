⍝ Solution 1
seats ← ¯1⊖¯1⌽(2+⍴input)↑'L'=input
seatsIter ← {
  adj ← ⊃+/+/1 0 ¯1∘.⊖1 0 ¯1⌽¨⊂⍵
  off ← ⍵∧5≤adj
  on  ← seats∧0=adj
  on+off-⍨⍵
}
⊃⌽{+/+/seatsIter(⍣⍵)seats}¨⍳100

⍝ Solution 2 (based on @rak1507)
seats     ← '.'≠input
seatsIter ← {
  adj ← ⊂{+/,⍵}⌺3 3⊢⍵
  seats∧⊃1 ⍵∨.∧1 5∘.>adj
}
+/,seatsIter⍣≡seats
