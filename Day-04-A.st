day04A
   | delim valid |

   delim := String new: 2 withAll: Character cr.
   valid := [ :e | (e size = 8) or: 
                   (e size = 7 and: (e includes: 'cid' :> not)) ].

   ^ self splitOn: delim
       :> collect: [ :e | e substrings first ]
       :> select: valid
       :> size.
