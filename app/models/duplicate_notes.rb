module DuplicateNotes

  COMMON_WORDS = {
    'AND' => '*',
    'THE' => '*',
    'OR' => '*',
    'WELL' => '*',
    'PLAYED' => '*',
    'I' => '*',
    'BALL' => '*'
  }

  def users_duplicate_notes
    duplicates = []
      notes.each do |note|
      duplicates << note.message.upcase.gsub(/\W/, ' ').split(' ')
    end
    each_word =  duplicates.flatten
    each_word.group_by{ |e| e }.select { |k, v| v.size > 1 }.map(&:first).join(' ')
  end

  def strip_common_words
    users_duplicate_notes.gsub!(/THE|OR|HIT|MY|TO|BALL|OFF|HAD|BACK|SWING|NOT|WERE|WAS|THEN/, '*')
  end
end
