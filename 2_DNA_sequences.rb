def code_for_same_protein?(seq1,seq2)
  protein1, protein2 = ""
  seq1.chars.each_slice(3) { |tri| protein1 << $codons[tri] }
  seq2.chars.each_slice(3) { |tri| protein2 << $codons[tri] }
  protein1 == protein2
end

