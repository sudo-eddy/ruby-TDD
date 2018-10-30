class Book
attr_writer :title

def title
  @exempt = %w{a an and the in of}
  final_title = @title.split
  final_title.map!.with_index do |word, i|
    if i == 0 || !@exempt.include?(word)
      word.capitalize
    else
      word.downcase
    end
  end
  final_title.join(" ")
end
end
