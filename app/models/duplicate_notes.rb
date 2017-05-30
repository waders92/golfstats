module DuplicateNotes

  def users_duplicate_notes
    duplicates = []
      notes.each do |note|
      duplicates << note.message.upcase.split(" ")
    end
    each_word =  duplicates.flatten
    each_word.group_by{ |e| e }.select { |k, v| v.size > 1 }.map(&:first).join(' ')
  end
end
