class Subproj 
  def substring(string, dict)
    match = Hash.new(0)
    string.downcase.gsub(/[!.,?'"]/, "").split(" ").each do |s|
      dict.each do |elem|
        if s.include? elem
          match[elem]+=1
        end
      end
    end
    match
  end
end