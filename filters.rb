
def find(id)
  puts @candidates.find {|candidate| candidate[:id] == id}

end

def qualified_candidates(candidates)
   puts candidates.select {|candidate|
    experienced?(candidate)\
      and hundred_points?(candidate)\
      and over_17?(candidate)\
      and applied_15_days?(candidate)\
      and ruby_or_python?(candidate)}
end

def experienced?(candidate)
  if candidate[:years_of_experience] >= 2
    true
  else
    false
  end
end

def hundred_points?(candidate)
  if candidate[:github_points] >= 100
    true
  else
    false
  end
end

def over_17?(candidate)
  if candidate[:age] > 17
    true
  else
    false
  end
end

def ruby_or_python?(candidate)
  if candidate[:languages].index("Ruby") or candidate[:languages].index("Python")
    true
  else
    false
  end
end

def applied_15_days?(candidate)
  if candidate[:date_applied] >= 15.days.ago.to_date
    true
  else
    false
  end
end



# More methods will go below