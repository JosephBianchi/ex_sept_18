ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

hash = {}
ballots.each do |each_ballot|

  key_1 = each_ballot[1].to_sym
  key_2 = each_ballot[2].to_sym
  key_3 = each_ballot[3].to_sym


    if hash.has_key?(key_1)
      hash[key_1] += 3
    else
      hash[key_1] = 3
    end

    if hash.has_key?(key_2)
      hash[key_2] += 2
    else
      hash[key_2] = 2
    end

    if hash.has_key?(key_3)
      hash[key_3] += 1
    else
      hash[key_3] = 1
    end
end

print "The winner is #{hash.max_by{|k,v| v}} votes"
